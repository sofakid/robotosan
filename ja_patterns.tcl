# -----------------------
# exapandable primatives
# -----------------------
namespace eval patt {

variable lSubjects

variable selector

variable tags {

  <s>           ::prim::randomSubject
  <adj>         ::adj::selectAdj
  <do>          ::nouns::randomThing
  <place>       ::nouns::randomPlace
  <n-animate>   ::nouns::randomAnimate
  <n-inanimate> ::nouns::randomInanimate  
  <v>           ::verbs::randomVerb
  <v-lets>      ::verbs::select_vLets
  <v-neg>       ::verbs::select_vNeg
  <v-past>      ::verbs::select_vPast
  <v-pres>      ::verbs::select_vPres
  <v-lets-pol>  ::verbs::select_vLetsPol
  <v-neg-pol>   ::verbs::select_vNegPol
  <v-past-pol>  ::verbs::select_vPastPol
  <v-pres-pol>  ::verbs::select_vPresPol
  
  <trans>      ::nouns::randomModeOfTransportation
  
  <time-adv>   ::temporal::selectTimeAdverb

}; foreach {tag func} $tags {
  set selector($tag) $func
}


variable sentenceProtos {

  {<s>は<adj>です} {<s> is <adj>} {person place thing}
  {<s>は<adj>ではありません} {<s> is not <adj>} {person place thing negative}
  
  {<s>は<place>で<v>} {<s> <v> at the <place>} {}
  {<s>は<place>で<do>を<v>} {<s> <v> <do> at the <place>} {}
  {<place>で<do>を<v>} {I <v> <do> at the <place>} {}
  {<do>は<place>です} {The <do> is at the <place>} {}
  {<place>へ<trans>でいく} {I will go to the <place> by <trans>} {} 
  {<place>へ<do>を<v-lets>} {Let's <v-lets> a <do> to the <place>} {}
  {<place>で<do>を<v-lets>} {Let's <v-lets> a <do> at the <place>} {}
  {<place>へ<do>を<v-lets-pol>} {(pol) Let's <v-lets-pol> a <do> to the <place>} {}
  {<place>で<do>を<v-lets-pol>} {(pol) Let's <v-lets-pol> a <do> at the <place>} {}
  {<v-past>} {Did <v-past>} {past}
  {<time-adv>に<v-past>} {<time-adv> I did <v-past>} {past}
  {<do>を<v-neg>} {I will not <v-neg> the <do>} {}
  {<place>で<v-neg>} {I won't <v-neg> at the <place>} {}
  
}

variable lesson10 {

  {<n-inanimate>があります} {There is a <n-inanimate>} {}
  {<n-animate>がいます} {There is a <n-animate>} {}
  {<place>に<n-inanimate>があります} {There is a <n-inanimate> in the <place>} {}
  {<place>に<n-animate>がいます} {There is a <n-animate> in the <place>} {}

}

proc tag {fmt tag word} {
   set x [string first $tag $fmt]
   return [string replace $fmt $x [expr $x + [string length $tag] -1] $word]
}

proc setStuff {sTag lStuff} {

    upvar outKanji oKanji outKana oKana outEn oEn

    foreach {en kanji kana keywords} $lStuff {
       set oKanji [tag $oKanji $sTag $kanji]
       set oKana  [tag $oKana $sTag $kana]
       set oEn    [tag $oEn $sTag $en]
    }

}

proc forTags {s body} {

    set sNextBeg -1
    
    while {[set sNextBeg [string first "<" $s [expr $sNextBeg + 1]]] != -1} {
        set sNextEnd [string first ">" $s $sNextBeg]
        set sTag [string range $s $sNextBeg $sNextEnd]
   
        uplevel "set sTag $sTag;$body"

    }
}


proc oneLine {sJa sEn lTags} { 
   set sNextBeg -1
   
   set outKanji $sJa
   set outKana $sJa
   set outEn $sEn
   
   forTags $sJa {
      
      set lStuff [$::patt::selector($sTag) $lTags]
      
      #puts "=== $outEn $outKanji $outKana"
      #puts "### $lStuff"
      setStuff $sTag $lStuff
   }
   
   return [list $outEn $outKanji $outKana]
}

proc selectNoun {} {

}

proc selectPronoun {} {
  
}

proc buildSentence {protos} {

  foreach {sJa sEn lTags} $protos {
  
      puts [oneLine $sJa $sEn $lTags]
        
  }
  return [oneLine $sJa $sEn $lTags]
}

proc buildPatterns {lessonName protos} {
   #puts "patterns"

   for {set i 0} {$i < 10} {incr i} {
      set l [buildSentence $protos]
      puts "[lindex $l 0] - [lindex $l 2]"
   }

   for {set i 0} {$i < 10} {incr i} {
      foreach {sJa sEn lTags} $protos {
      
         foreach el [oneLine $sJa $sEn $lTags] {
            puts "$lessonName - $el"
            lappend lessons $el
         }
      
      }
      
   }
   
   set ::aLessons($lessonName) $lessons
}

proc buildLessons {} {

    buildPatterns "sentenceBasic" $::patt::sentenceProtos

    buildPatterns "lesson10" $::patt::lesson10

}

}; # end namespace


lappend lessonBuilders ::patt::buildLessons
