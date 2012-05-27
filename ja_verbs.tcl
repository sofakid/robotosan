namespace eval verbs {

# -------------
# Ichidan verbs
# -------------

set lIchidan {
   {eat}      {食べる} {たべる}
   {get up}   {起きる} {おきる}
   {wake up}  {起きる} {おきる}
   {see} {見る} {みる}
   {look} {見る} {みる}
   {watch} {見る} {みる}
   
}; # end set lIchidan

# -----------
# Godan verbs
# -----------
# ? {stand still} {} {ただずむ}

# TODO
# - when 話す is conjugated to noun form, 
#   the kanji needs to absorb the し.
#   i.e. it should be 話 not 話し, 
#   (but 話します is still correct)
set lGodan {
   {die} {死ぬ} {しぬ}
   {drink} {飲む} {のむ}
   {erase} {消す} {けす}
   {finish} {終わる} {おわる}
   {go to bed} {寝る} {ねる}
   {leave} {去る} {さる}
   {return} {帰る} {かえる}
   {go home} {帰る} {かえる}
   {meet} {会う} {あう}
   {play} {遊ぶ} {あそぶ}
   {sell} {売る} {うる}
   {sleep} {寝る} {ねる}
   {speak} {話す} {はなす}
   {study(godan)} {学ぶ} {まなぶ}
   {swim} {泳ぐ} {およぐ}
   {take a rest} {休む} {やすむ}
   {take a holiday} {休む} {やすむ}
   {turn off} {消す} {けす}
   {walk} {歩く} {あるく}
   {win} {勝つ} {かつ}
   {work} {働く} {はたらく}
  
  {write} {書く} {かく}
  {draw}  {書く} {かく}
  {paint}  {書く} {かく}
   
  {smoke (a cig)} {吸う} {すう}
  
  {hear, listen}        {聞く} {きく}
  {read}                {読む} {よむ}
  {buy}                 {買う} {かう}
  {take (a photo)}      {撮る} {とる}
  {understand}    {分かる} {わかる}
  {recognize}    {分かる} {わかる}
 
}; # end set lGodan

# ----------
# Suru verbs
# ----------
# all end with する
set lSuru {
  {study} {勉強} {べんきょう}
  {travel} {旅行} {りょこう}
  {telephone} {電話} {でんわ}
  {take a walk} {散歩} {さんぽ}
  {have a meal} {食事} {しょくじ}
  {marry} {結婚} {けっこん}
  {explain} {説明} {せつめ}
  {do the washing} {洗濯} {せんたく}
  {ask questions} {質問} {しつもん}
  {promise} {約束} {やくそく}
  {reserve} {予約} {よやく}
  {clean} {掃除} {そうじ}
  {shop} {買い物} {かいもの}
  {prepare} {準備} {じゅんび}
  {drive} {ドライブ} {ドライブ}
  {kiss} {キス} {キス}
  {type} {タイプ} {タイプ}
  {knock} {ノック} {ノック}
  {do homework}                {宿題} {しゅくだい}
  {play tennis}                  {テニス} {テニス}
  {play soccer}                  {サッカー} {サッカー}
  {do cherry blossom viewing}  {お花見} {おはなみ}
 
}; # end suru verbs


# TODO
# ----------
# nidan verb
# ----------
# uru/eru - to get. see nidan.pdf


# -----------
# Conjugation
# -----------

# irregular verbs: iku, kuru, suru
proc conjugateIkuKanji {w} {
   # 　　　　いか　　　いき　いく　いけ　　いこう　　いった　　いって
   return {{行か} {行き} {行く} {行け} {行こう} {行った} {行って}}
}

proc conjugateIkuKana {w} {
   return {{いか} {いき} {いく} {いけ} {いこう} {いった} {いって}}
}


proc conjugateKuruKanji {w} {
   return {{来} {来} {来る} {来れ} {来よう} {来た} {来て}}
}

proc conjugateKuruKana {w} {
   return {{こ} {き} {くる} {くれ} {こよう} {きた} {きて}}
}


proc conjugateSuru {b} {

   foreach [list a i u e o ta te] {
        {し} {し} {する} {すれ} {しよう} {した} {して}
   } {};

   return [list $b$a $b$i $b$u $b$e $b$o $b$ta $b$te]
}


proc conjugateIchidan {sVerb} {

   set n [expr [string length $sVerb] -1];
   set b [string range $sVerb 0 [expr $n -1]]
   
   set l {{} {} {る} {れ} {よう} {た} {て}}
	
   foreach [list a i u e o ta te] {
        {} {} {る} {れ} {よう} {た} {て}
   } {};
   
   return [list $b$a $b$i $b$u $b$e $b$o $b$ta $b$te]
   
}

proc conjugateGodan {sVerb} {

   set n [expr [string length $sVerb] -1];
   set cLast [string index $sVerb $n]
   set sBase [string range $sVerb 0 [expr $n -1]]
   
   # base: a i u e o ta te
   switch $cLast {

	   {う} { set l {{あ} {い} {う} {え} {おう} {った} {って}}; }
	   {つ} { set l {{た} {ち} {つ} {て} {とう} {った} {って}}; }
	   {づ} { set l {{だ} {ぢ} {づ} {で} {どう} {っだ} {っで}}; }
	   {る} { set l {{ら} {り} {る} {れ} {ろう} {った} {って}}; }
	
	   {く} { set l {{か} {き} {く} {け} {こう} {いた} {いて}}; }
	   {ぐ} { set l {{が} {ぎ} {ぐ} {げ} {ごう} {いだ} {いで}}; }
	
	   {す} { set l {{さ} {し} {す} {せ} {そう} {した} {して}}; }
	   {ず} { set l {{ざ} {じ} {ず} {ぜ} {ぞう} {じだ} {じで}}; }
	
	   {ぬ} { set l {{な} {に} {ぬ} {ね} {のう} {んだ} {んで}}; }
	   {ふ} { set l {{は} {ひ} {ふ} {へ} {ほう} {んだ} {んで}}; }
	   {ぶ} { set l {{ば} {び} {ぶ} {べ} {ぼう} {んだ} {んで}}; }
	   {ぷ} { set l {{ぱ} {ぴ} {ぷ} {ぺ} {ぽう} {んだ} {んで}}; }
	   {む} { set l {{ま} {み} {む} {め} {もう} {んだ} {んで}}; }
	 
   }
   
   foreach [list a i u e o ta te] $l {};
   
   return [list $sBase$a $sBase$i $sBase$u $sBase$e $sBase$o $sBase$ta $sBase$te]
   
}

proc baseA {v} {
  return [lindex $v 0]
}

proc baseI {v} {
  return [lindex $v 1]
}

proc baseU {v} {
  return [lindex $v 2]
}

proc baseE {v} {
  return [lindex $v 3]
}

proc baseO {v} {
  return [lindex $v 4]
}

proc baseTa {v} {
  return [lindex $v 5]
}

proc baseTe {v} {
  return [lindex $v 6]
}

# for the vFunctions, pass in a list 
# returned by one of the conjugateDans

proc vNeg {v} {
   return "[baseA $v]ない"
}

proc vNegPast {v} {
   return "[baseA $v]なかった"
}

proc vNoun {v} {
   return "[baseI $v]"
}

proc vPresFutPol {v} {
   return "[baseI $v]ます"
}

proc vPastPol {v} {
   return "[baseI $v]ました"
}

proc vNegPol {v} {
   return "[baseI $v]ません"
}

proc vNegPastPol {v} {
   return "[baseI $v]ませんでした"
}

proc vDesireTo {v} {
   return "[baseI $v]たい"
}

proc vDesireToPol {v} {
   return "[baseI $v]たいです"
}

proc vPresFut {v} {
   return "[baseU $v]"
}

proc vIf {v} {
   return "[baseE $v]ば"
}

# verb is now ichidan
proc vCan {v} {
   return "[baseE $v]る"
}

proc vCanPol {v} {
   return "[baseE $v]ます"
}

proc vLets {v} {
   return "[baseO $v]"
}

proc vLetsPol {v} {
   return "[baseI $v]ましょう"
}

proc vTryTo {v} {
   return "[baseO $v]とする"
}

proc vWantSomeoneElseTo {v} {
   return "[baseTe $v]欲しい"
}

proc vCommandRude {v} {
   return "[baseE $v]"
}

proc vCommand {v} {
   return "[baseTe $v]"
}

proc vCommandPol {v} {
   return "[baseTe $v]下さい"
}

# iru - to exist (animate)
proc vPresDoing {v} {
   return "[baseTe $v]いる"
}

# imasu
proc vPresDoingPol {v} {
   return "[baseTe $v]います"
}

proc vPast {v} {
   return "[baseTa $v]"
}

proc vIfAndWhen {v} {
   return "[baseTa $v]ら"
}

proc vDoSuchAs {v} {
   return "[baseTa $v]りする"
}

# sentence patterns
set lBasicConj {
  {did <v>}                     {vPast}
  {didn't <v>}                  {vNegPast}
  {won't <v>}                   {vNeg}
  {to <v>}                      {vPresFut}
  {will <v>}                    {vPresFut}
  {a <v>}                       {vNoun}
  {want to <v>}                 {vDesireTo}
  {<v>! (rude)}                 {vCommandRude}
  {<v>!}                        {vCommand}
  {<v>ing}                      {vPresDoing}
  {if (i) <v>}                  {vIf}
}

# する basic sentence patterns, same as above with no noun form
set lBasicSuruConj {
  {did <v>}                     {vPast}
  {didn't <v>}                  {vNegPast}
  {won't <v>}                   {vNeg}
  {to <v>}                      {vPresFut}
  {will <v>}                    {vPresFut}
  {want to <v>}                 {vDesireTo}
  {<v>! (rude)}                 {vCommandRude}
  {<v>!}                        {vCommand}
  {<v>ing}                      {vPresDoing}
  {if (i) <v>}                  {vIf}
}

set lPoliteConj {
  {did <v> (P)}         {vPastPol}
  {didn't <v> (P)}      {vNegPastPol}
  {won't <v> (P)}       {vNegPol}
  {to <v> (P)}          {vPresFutPol}
  {will <v> (P)}        {vPresFutPol}
  {want to <v> (P)}     {vDesireToPol}
  {<v> please}          {vCommandPol}
  {<v>ing (P)}          {vPresDoingPol}
}

set lMoreConj {
  {if and when (i) <v>}         {vIfAndWhen}
  {do such things as <v>}       {vDoSuchAs}
  {try to <v>}                  {vTryTo}
  {want someone else to <v>}    {vWantSomeoneElseTo}
  {let's <v>}                   {vLets}
  
}; # end lBasicConj

proc tagV {fmt eng} {
   set x [string first "<v>" $fmt]
   return [string replace $fmt $x [expr $x + 2] $eng]
}

# ===============
# Conjugal visits
# ===============

proc buildGodanConj {} {
   
    foreach {fmt func} $::verbs::lBasicConj {
   
        foreach {eng kanji kana} $::verbs::lGodan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("godan") $lGodanLessons
}

proc buildGodanMoreConj {} {
   
    foreach {fmt func} $::verbs::lMoreConj {
   
        foreach {eng kanji kana} $::verbs::lGodan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("godanMore") $lGodanLessons
}

proc buildGodanBasicConj {} {
   
    foreach {fmt func} $::verbs::lBasicConj {
   
        foreach {eng kanji kana} $::verbs::lGodan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("godanBasic") $lGodanLessons
}

proc buildGodanPoliteConj {} {
   
    foreach {fmt func} $::verbs::lPoliteConj {
   
        foreach {eng kanji kana} $::verbs::lGodan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("godanPolite") $lGodanLessons
}


proc buildSuruMoreConj {} {
   
    foreach {fmt func} $::verbs::lMoreConj {
   
        foreach {eng kanji kana} $::verbs::lSuru {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateSuru $kanji]\""]
            set kana     [eval "$func \"[conjugateSuru $kana]\""]
            
            lappend lLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("suruVerbsMore") $lLessons
}

proc buildSuruBasicConj {} {
   
    foreach {fmt func} $::verbs::lBasicSuruConj {
   
        foreach {eng kanji kana} $::verbs::lSuru {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateSuru $kanji]\""]
            set kana     [eval "$func \"[conjugateSuru $kana]\""]
            
            lappend lLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("suruVerbsBasic") $lLessons
}

proc buildSuruPoliteConj {} {
   
    foreach {fmt func} $::verbs::lPoliteConj {
   
        foreach {eng kanji kana} $::verbs::lSuru {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateSuru $kanji]\""]
            set kana     [eval "$func \"[conjugateSuru $kana]\""]
            
            lappend lLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("suruPolite") $lLessons
}


proc buildIchidanConj {} {
   
    foreach {fmt func} $::verbs::lBasicConj {
   
        foreach {eng kanji kana} $::verbs::lIchidan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateIchidan $kanji]\""]
            set kana     [eval "$func \"[conjugateIchidan $kana]\""]
            
            lappend lIchidanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set ::aLessons("ichidanConjugation") $lIchidanLessons
}


# ==================
# Verb vocab lessons
# ==================


proc buildVerbsVocab {} {

   foreach "sNative sKanji sKana" $::verbs::lIchidan {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach "sNative sKanji sKana" $::verbs::lGodan {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	set sSuru "する"
	foreach "sNative sKanji sKana" $::verbs::lSuru {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji$sSuru;
		set aKana($sNative) $sKana$sSuru;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set ::aLessons("verbsVocab") $lLesson

}

proc buildIchidanVocab {} {

   foreach "sNative sKanji sKana" $::verbs::lIchidan {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set ::aLessons("ichidanVocab") $lLesson

}

proc buildGodanVocab {} {

   foreach "sNative sKanji sKana" $::verbs::lGodan {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set ::aLessons("godanVocab") $lLesson

}

proc buildSuruVocab {} {

    set sSuru "する"

    foreach "sNative sKanji sKana" $::verbs::lSuru {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji$sSuru;
		set aKana($sNative) $sKana$sSuru;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set ::aLessons("suruVocab") $lLesson

}

proc buildVerbsConj {} {

   set ::aLessons("verbsBasic") $::aLessons("godanBasic")
   
   lappend ::aLessons("verbsBasic") $::aLessons("suruVerbsBasic")
   
   set ::aLessons("verbsPolite") $::aLessons("godanPolite")
   
   lappend ::aLessons("verbsPolite") $::aLessons("suruPolite")
   
   set ::aLessons("verbsMore") $::aLessons("godanMore")
   
   lappend ::aLessons("verbsMore") $::aLessons("suruVerbsMore")
   
   
}


# ---------
# selectors
# ---------
proc randomVerb {tags} {

   foreach {en kanji kana} $::aLessons("verbsVocab") {
      lappend lOut "$en" "$kanji" "$kana" {}
   }

   set n [llength $lOut]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 4)]
   return [lrange $lOut $j [expr $j + 3]]

}

proc wordEntry {} {
    return [list en kanji kana tags]
}

proc selectGodan {$lTags} {

   foreach {en kanji kana} $::verbs::lGodan {
      lappend lOut "$en" "$kanji" "$kana" {}
   }

   set n [llength $lOut]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 4)]
   return [lrange $lOut $j [expr $j + 3]]
    
    
}

proc selectIchidan {$lTags} {

   foreach {en kanji kana} $::verbs::lIchidan {
      lappend lOut "$en" "$kanji" "$kana" {}
   }

   set n [llength $lOut]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 4)]
   return [lrange $lOut $j [expr $j + 3]]
      
}

proc selectSuru {$lTags} {

   foreach {en kanji kana} $::verbs::lSuru {
      lappend lOut "$en" "$kanji" "$kana" {}
   }

   set n [llength $lOut]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 4)]
   return [lrange $lOut $j [expr $j + 3]]
    
    
}

proc defineSelectorsWithMutators {muts} {

   foreach mut $muts {
       set s "return \[selectWithMutator $mut\]"
       puts "#####\n############# $s"
       eval proc select_$mut {tags} {$s}
   }
   
   puts [info proc]
   
}

proc selectWithMutator {mutator} {

    switch [random 3] {

        0 {
            set conj "conjugateIchidan"
            foreach [wordEntry] [selectIchidan {}] {}
        } 
        
        1 {
            set conj "conjugateGodan"
            foreach [wordEntry] [selectGodan {}] {}
        } 
        
        2 {
            set conj "conjugateSuru"
            foreach [wordEntry] [selectSuru {}] {}
        } 
    }
    return [list $en [$mutator [$conj $kanji]] [$mutator [$conj $kana]] {} ]

}

defineSelectorsWithMutators {

 vNeg  
 vNegPast 
 vNoun
 vPresFutPol
 vPastPol
 vNegPol
 vNegPastPol
 vDesireTo
 vDesireToPol
 vPresFut
 vIf
 vCan
 vCanPol
 vLets
 vLetsPol
 vTryTo
 vWantSomeoneElseTo
 vCommandRude
 vCommand
 vCommandPol
 vPresDoing
 vPresDoingPol
 vPast
 vIfAndWhen
 vDoSuchAs

}

proc selectBaseA {tags} {
    return [selectWithMutator "baseA"]
}

proc selectBaseI {tags} {
    return [selectWithMutator "baseI"]
}

proc selectBaseU {tags} {
    return [selectWithMutator "baseU"]
}

proc selectBaseE {tags} {
    return [selectWithMutator "baseE"]
}

proc selectBaseO {tags} {
    return [selectWithMutator "baseO"]
}

proc selectBaseTa {tags} {
    return [selectWithMutator "baseTa"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

proc selectNeg {tags} {
    return [selectWithMutator "vNeg"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

proc selectBaseTe {tags} {
    return [selectWithMutator "baseTe"]
}

};


importBuilders {

  ::verbs::buildGodanBasicConj 
  ::verbs::buildGodanPoliteConj 
  ::verbs::buildGodanMoreConj 

  ::verbs::buildIchidanConj 

  ::verbs::buildSuruBasicConj 
  ::verbs::buildSuruPoliteConj 
  ::verbs::buildSuruMoreConj 

  ::verbs::buildGodanVocab 
  ::verbs::buildIchidanVocab 
  ::verbs::buildSuruVocab 

  ::verbs::buildVerbsVocab

  ::verbs::buildVerbsConj

}
