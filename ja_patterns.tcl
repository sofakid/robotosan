# -----------------------
# exapandable primatives
# -----------------------
namespace eval patt {

variable lSubjects

variable selector

variable tags {

  <aru>         ::verbs::selectAru
  <iru>         ::verbs::selectIru
  <desu>        ::verbs::selectDesu

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

variable lesson6 {

  {<n1>はどんな<n2><desu>か} 
        {What kind of <n2> <desu> <n1>?} 
        { { tense { most } { <desu> } } }

  {<n1>はどう<desu>か} 
        {How <desu> <n1>?} 
        { { tense { most } { <desu> } } }


}

variable lesson10 {

  {<n-inanimate>が<aru>} 
        {There <aru> a <n-inanimate>} 
        { { tense { most } { <aru> } } }
        
  {<n-animate>が<iru>} 
        {There <iru> a <n-animate>} 
        { { tense { most } { <iru> } } }
  
  
  
  {<place>に<n-inanimate>が<aru>} 
        {There <aru> a <n-inanimate> (in the) <place>} 
        { { tense { most } { <aru> } } }

  {<place>に<n-inanimate>が<aru>} 
        {(Polite) There <aru> a <n-inanimate> (in the) <place>} 
        { { tense { mostPol } { <aru> } } }
        
  {<place>に<n-animate>が<iru>} 
        {There <iru> a <n-animate> (in the) <place>} 
        { { tense { most } { <iru> } } }

  {<place>に<n-animate>が<iru>} 
        {(Polite) There <iru> a <n-animate> (in the) <place>} 
        { { tense { mostPol } { <iru> } } }



  {<n-inanimate>は<place>に<aru>} 
        {The <n-inanimate> <aru> (in the) <place>} 
        { { tense { most } { <aru> } } }

  {<n-animate>は<place>に<iru>}
        {The <n-animate> <iru> (in the) <place>} 
        { { tense { most } { <iru> } } }



  {<n-inanimate>はどこに<aru>か} 
        {Where <aru> (the) <n-inanimate>?} 
        { { tense { most } { <aru> } } }

  {<n-animate>はどこに<iru>か} 
        {Where <iru> (the) <n-animate>?} 
        { { tense { most } { <iru> } } }



  {<do>の<position>に<n-inanimate>が<aru>} 
        {There <aru> a <n-inanimate> <position> (the) <do>} 
        { { tense { most } { <aru> } } }

  {<do>の<position>に<n-animate>が<iru>} 
        {There <iru> a <n-animate> <position> (the) <do>} 
        { { tense { most } { <iru> } } }



  {<n1>と<n2>の<between>に<n-inanimate>が<aru>} 
        {There <aru> a <n-inanimate> <between> (the) <n1> and (the) <n2>} 
        { { tense { most } { <aru> } } }
        
  {<n1>と<n2>の<between>に<n-inanimate>が<aru>} 
        {(Polite) There <aru> a <n-inanimate> <between> (the) <n1> and (the) <n2>} 
        { { tense { mostPol } { <aru> } } }
        
  {<n1>と<n2>の<between>に<n-animate>が<iru>} 
        {There <iru> a <n-animate> <between> (the) <n1> and (the) <n2>} 
        { { tense { most } { <iru> } } }

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

proc expandShortcut {l short exp} {

    if {0 <= [set i [lsearch -exact $l $short]]} {
        set lFirst [lrange $l 0 $i]
        set lRest [lrange $l [expr $i + 1] end]
       
        if {0 < $i} {
            set lOut $lFirst
        }
       
        if {{} != $lRest} {
            foreach e $lRest {
                lappend lOut $e
            }
        }
        
        foreach e $exp {
            lappend lOut $e
        }
       
    }
    
    if {[info exists lOut]} {
        return $lOut
    }
    
    return $l

}

proc parseTenses {tenses} {

    foreach {short exp} {
    
        "mostFut"      "past pres fut negPast negPres negFut"
        "most"      "past pres negPast negPres"
        
        "mostFutPol"      "pastPol presPol futPol negPastPol negPresPol negFutPol"
        "mostPol" "pastPol presPol negPastPol negPresPol"
        
    } {
        set tenses [expandShortcut $tenses $short $exp]
    }
    
    return $tenses
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
            
                set lTenses [parseTenses [lindex $meta 1]]
                
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

proc buildSentence {protos} {

  foreach {sJa sEn lMeta} $protos {}
  return [oneLine $sJa $sEn $lMeta]
}

proc buildPatterns {lessonName protos} {
   ::ui::yellow "patterns\n"

   #for {set i 0} {$i < 10} {incr i} {
   #   set l [buildSentence $protos]
   #   puts "[lindex $l 0] - [lindex $l 2]"
   #}

   for {set i 0} {$i < 3} {incr i} {
      foreach {sJa sEn lMeta} $protos {
      
         set result [oneLine $sJa $sEn $lMeta]
         
         ::ui::yellow "Prototype: "
         ::ui::lightBlue "$sJa\n"

         foreach {en kanji kana} $result {
             ::ui::lightBlue $en
             puts -nonewline " - " 
             ::ui::pink "$kanji\n"   
         }
         
         foreach el $result {
            lappend lessons $el
         }
      
      }
      
   }
   
   set ::aLessons($lessonName) $lessons
}

proc buildLessons {} {

    buildPatterns "sentenceBasic" $::patt::sentenceProtos

    buildPatterns "lesson6" $::patt::lesson6
    buildPatterns "lesson10" $::patt::lesson10
    

}

}; # end namespace


lappend lessonBuilders ::patt::buildLessons
