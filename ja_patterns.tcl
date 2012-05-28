# -----------------------
# exapandable primatives
# -----------------------
namespace eval patt {

variable lSubjects

variable selector

variable tags {

  <aru>         ::verbs::selectAru
  <iru>         ::verbs::selectIru

  <s>           ::prim::randomSubject
  <adj>         ::adj::selectAdj
  <do>          ::nouns::randomThing
  <place>       ::nouns::randomPlace
  <n-animate>   ::nouns::randomAnimate
  <n-inanimate> ::nouns::randomInanimate  
  
  <n1>          ::nouns::randomThing
  <n2>          ::nouns::randomThing
  
  <position>    ::nouns::randomPosition
  <between>     ::nouns::randomBetween
  
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
  
  {<place>に<n-inanimate>があります} {There is a <n-inanimate> (in the) <place>} {}
  {<place>に<n-animate>がいます} {There is a <n-animate> (in the) <place>} {}

  {<place>に<n-inanimate>がありました} {There was a <n-inanimate> (in the) <place>} {}
  {<place>に<n-animate>がいました} {There was a <n-animate> (in the) <place>} {}

  {<n-animate>は<place>にいます} {The <n-animate> is (in the) <place>} {}
  {<n-inanimate>は<place>にあります} {The <n-inanimate> is (in the) <place>} {}

  {<n-animate>は<place>にいました} {The <n-animate> was (in the) <place>} {}
  {<n-inanimate>は<place>にありました} {The <n-inanimate> was (in the) <place>} {}

  {<n-animate>はどこにいますか} {Where is the <n-animate>?} {}
  {<n-inanimate>はどこにありますか} {Where is the <n-inanimate>?} {}

  {<n-animate>はどこにいましたか} {Where was the <n-animate>?} {}
  {<n-inanimate>はどこにありましたか} {Where was the <n-inanimate>?} {}

  {<do>の<position>に<n-animate>がいます} {There is a <n-animate> <position> (the) <do>} {}
  {<do>の<position>に<n-inanimate>があります} {There is a <n-inanimate> <position> (the) <do>} {}

  {<do>の<position>に<n-animate>がいました} {There was a <n-animate> <position> (the) <do>} {}
  {<do>の<position>に<n-inanimate>がありました} {There was a <n-inanimate> <position> (the) <do>} {}


  {<n1>と<n2>の<between>に<n-inanimate>が<aru>} 
        {There <aru> a <n-inanimate> <between> (the) <n1> and (the) <n2>} 
        {
            { tense 
                    { past pres fut negPast negPres negFut } 
                    { <aru> } 
            }
        }

　{<n1>と<n2>の<between>に<n-animate>が<iru>} 
        {There <iru> a <n-animate> <between> (the) <n1> and (the) <n2>} 
        { 
            { tense 
                { past pres fut negPast negPres negFut } 
                { <iru> } 
            }
        }

}

proc tag {fmt tag word} {
   set x [string first $tag $fmt]
   return [string replace $fmt $x [expr $x + [string length $tag] -1] $word]
}

proc setStuff {sTag lStuff} {

    upvar outKanji oKanji outKana oKana outEn oEn

    foreach {en kanji kana meta} $lStuff {
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

proc forMetaLoops {lMeta lBodies} {
  #todo
  # { tense 
  #     { past pres fut pastNeg presNeg futNeg } 
  #     { <iru> } 
  # }
  
  # set the code to run
  foreach {meta body} $lBodies {
     set a($meta) $body
  }
  
  # if no meta loops are found we run a(default) at the end
  set metaFound 0
  
  # find the loop metas
  foreach meta $lMeta {
  
     # all loop metas are lists themselves
     if {0 < [llength $meta]} {
     
        set metaKw [lindex $meta 0] 
     
        switch $metaKw {
     
            tense {
                set metaFound 1
            
                set lTenses [lindex $meta 1]
                set lTargets [lindex $meta 2]

                foreach tense $lTenses {
                    uplevel "set tense $tense ; set lTargets $lTargets ; $a($metaKw)"
                }

            }
            
         }
     }
  
  }
  
  if {0 == $metaFound} {
      uplevel $a(default)
  }
  
}

proc oneLine {sJa sEn lMeta} { 
    set sNextBeg -1
    
    # prepare a list to output
    # { english kanji kana english kanji kana }
    #
    # lOut autoset by lappend
    
    forMetaLoops $lMeta {
    
        tense {
            # this is a foreach tense as $tense with $lTargets tags
            
            # reinit output sentences
            set outKanji $sJa
            set outKana $sJa
            set outEn $sEn
            
            # note looping through sJa as we don't modify 
            # it and it contains all the tags
            #
            # sets $sTag on each loop
            forTags $sJa {
              
                set foundTarget 0
                # pass the tense to the selector for the target tags
                foreach target $lTargets {
                
                    if {$sTag == $target} {
                        set lStuff [$::patt::selector($sTag) $lMeta $tense]
                        set foundTarget 1
                    } 
                
                }
               
                if {$foundTarget == 0} {
                    set lStuff [$::patt::selector($sTag) $lMeta]
                }
              
                # replaces <tag> in the sentences with the {en kanji kana} from lStuff 
                # as the sentences: outEn, outKanji, and outKana
                setStuff $sTag $lStuff
                #puts "lStuff: $lStuff - $outEn - $outKanji"
            
            }
        
            lappend lOut $outEn $outKanji $outKana
            
        }

        default {
        
         # reinit output sentences
            set outKanji $sJa
            set outKana $sJa
            set outEn $sEn
            
            # note looping through sJa as we don't modify 
            # it and it contains all the tags
            #
            # sets $sTag on each loop
            forTags $sJa {
              
                set lStuff [$::patt::selector($sTag) $lMeta]
               
                # replaces <tag> in the sentences with the {en kanji kana} from lStuff 
                # as the sentences: outEn, outKanji, and outKana
                setStuff $sTag $lStuff
                #puts "lStuff: $lStuff - $outEn - $outKanji"
            
            }
        
            lappend lOut $outEn $outKanji $outKana
         
        }
        
    }

    if {[info exists lOut]} {
        return $lOut
    }
    
    return [list "0xdeadbeef" "0xdeadbeef" "0xdeadbeef" "0xdeadbeef" ]
}

proc selectNoun {} {

}

proc selectPronoun {} {
  
}

proc buildSentence {protos} {

  foreach {sJa sEn lMeta} $protos {
  
      puts [oneLine $sJa $sEn $lMeta]
        
  }
  return [oneLine $sJa $sEn $lMeta]
}

proc buildPatterns {lessonName protos} {
   #puts "patterns"

   for {set i 0} {$i < 10} {incr i} {
      set l [buildSentence $protos]
      puts "[lindex $l 0] - [lindex $l 2]"
   }

   for {set i 0} {$i < 30} {incr i} {
      foreach {sJa sEn lMeta} $protos {
      
         foreach el [oneLine $sJa $sEn $lMeta] {
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
