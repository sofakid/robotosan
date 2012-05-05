# -------------
# Ichidan verbs
# -------------

set lIchidan {

   {get up}   {起きる} {おきる}
   {wake up}  {起きる} {おきる}
   {see}      {} {}
   {look at}  {} {}
   {watch}    {} {}
 
   
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
proc conjugateIku {} {
   # 　　　　いか　　　いき　いく　いけ　　いこう　　いった　　いって
   return {{行か} {行き} {行く} {行け} {行こう} {行った} {行って}}
}

proc conjugateKuru {} {
   # 　　　　こ　　き　　くる　くれ　　こよう　　きた　　きて
   return {{来} {来} {来る} {来れ} {来よう} {来た} {来て}}
}

proc conjugateSuru {} {
   return {{し} {し} {する} {すれ} {しよう} {した} {して}}
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

proc baseA {l} {
  return [lindex $l 0]
}

proc baseI {l} {
  return [lindex $l 1]
}

proc baseU {l} {
  return [lindex $l 2]
}

proc baseE {l} {
  return [lindex $l 3]
}

proc baseO {l} {
  return [lindex $l 4]
}

proc baseTa {l} {
  return [lindex $l 5]
}

proc baseTe {l} {
  return [lindex $l 6]
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

# need more thought, design this better.

global lBasicConj
set lBasicConj {
  {<s> <tadv> <v>}              {subject timeAdverb vPres} 
  {did <v>}                     {vPast}
  {didn't <v>}                  {vNegPast}
  {won't <v>}                   {vNeg}
}; # end lBasicConj

proc tagV {fmt eng} {
   set x [string first "<v>" $fmt]
   return [string replace $fmt $x [expr $x + 2] $eng]
}

global lGodanLessons
proc buildGodanConj {} {
    
    #puts "Building godan lessons"
    
    global lBasicConj
    global lGodan
    global aLessons
    
    foreach {fmt func} $lBasicConj {
        
        foreach {eng kanji kana} $lGodan {
            
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
            
        }
    }
    
    set aLessons("godan") $lGodanLessons
}

proc buildIchidanConj {} {
   
    global lBasicConj
    global aLessons
   
    set lIchidanLessons {}
    
    foreach {fmt func} $lBasicConj {
   
        foreach {eng kanji kana} $::lIchidan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateIchidan $kanji]\""]
            set kana     [eval "$func \"[conjugateIchidan $kana]\""]
            
            lappend lIchidanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set aLessons("ichidanConjugation") $lIchidanLessons
}

proc buildVerbsVocab {} {

   global aLessons
   
   set lWords {}
   set lLesson {}
   
   foreach "sNative sKanji sKana" $::lIchidan {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		   puts "\nWARNING - duplicate sKana($sNative) : overwriting $aKana($sNative)"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach "sNative sKanji sKana" $::lGodan {
	
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
	
	set aLessons("verbsVocab") $lLesson

}

proc buildIchidanVocab {} {

   global aLessons
   
   set lWords {}
   set lLesson {}
   
   foreach "sNative sKanji sKana" $::lIchidan {
	
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
	
	set aLessons("ichidanVocab") $lLesson

}

proc buildGodanVocab {} {

   global aLessons
   
   set lWords {}
   set lLesson {}
   
   foreach "sNative sKanji sKana" $::lGodan {
	
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
	
	set aLessons("godanVocab") $lLesson

}


lappend lessonBuilders buildGodanConj buildIchidanConj buildGodanVocab buildIchidanVocab buildVerbsVocab

