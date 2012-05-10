# ----------
# Adjectives
# ----------

namespace eval adj {

# 0 is Na
# 1 is I
variable lastSelect 0

# -------------
# い Adjectives
# -------------
variable lIAdj {
  {large}           {大きい} {おおきい} {}
  {big}             {大きい} {おおきい} {}
  {small}           {小さい} {ちいさい} {}
  {little}          {小さい} {ちいさい} {}
  {new}             {新しい} {あたらしい} {}
  {old}             {古い} {ふるい} {!age}
  
  {good}                            {いい} {よい} {}
  {bad}                             {悪い} {わるい} {}
  {hot}                             {{暑い} {熱い}} {あつい} {weather touch}
  {cold}                            {寒い} {さむい} {weather}
  {cold}                            {冷たい} {つめたい} {touch}
  {difficult}                       {難しい} {むずかしい} {}
  {easy}                            {易しい} {やさしい} {}
  {expensive}                       {高い} {たかい} {}
  {tall}                            {高い} {たかい} {height}
  {high}                            {高い} {たかい} {height}
  {inexpensive}                     {安い} {やすい} {}
  {low}                             {低い} {ひくい} {building height}
  {short}                           {低い} {ひくい} {height}
  {interesting}                     {面白い} {おもしろい} {}
  {funny}                           {面白い} {おもしろい} {comedy joke}
  {delicious}                       {おいしい} {おいしい} {food}
  {busy}                            {忙しい} {いそがしい} {}
  {enjoyable}                       {楽しい} {たのしい} {}
  
  {white}   {白い} {しろい} {colour}
  {black}   {黒い} {くろい} {colour}
  {red}     {赤い} {あかい} {colour}
  {blue}    {青い} {あおい} {colour}
}

# -------------
# な Adjectives
# -------------
variable lNaAdj {
  
  {handsome}                 {ハンサム} {ハンサム} {}
  {beautiful}                {きれい} {きれい} {}
  {clean}                    {きれい} {きれい} {}
  {quiet}                    {静か} {しずか} {}
  {lively}                   {にぎやか} {にぎやか} {}
  {famous}                   {有名} {ゆうめい} {}
  {kind}                     {親切} {しんせつ} {}
  {healthy}                  {元気} {げんき} {}
  {cheerful}                 {元気} {げんき} {}
  {free}                     {暇} {ひま} {temporal}
  {convenient}               {分離} {ぶんり} {}
  {fine}                     {すてき} {すてき} {}
  {nice}                     {すてき} {すてき} {}
  {wonderful}                {すてき} {すてき} {}

}; # end set lNaAdj
# TODO
# sound?
#
#

proc selectFromList {lAdj tags} {
   set n [llength $lAdj]
   set m [expr $n / 4]
   
   # make this way better
   set i [expr (int((rand()*31*$m)) % $m) * 4]
   
   # todo tags
   
   return [lrange $lAdj $i [expr $i + 3]]
   
}

proc selectNaAdj {tags} {
   return [selectFromList $::adj::lNaAdj $tags]
}

proc selectIAdj {tags} {
   return [selectFromList $::adj::lIAdj $tags]
}

proc selectAdj {tags} {
  set ::adj::lastSelect [expr int(rand()*10) % 2]
  #puts $::adj::lastSelect
  return $::adj::lastSelect ? [selectIAdj $tags] : [selectNaAdj $tags]
}

# ---------------
# Lesson Builders
# ---------------
proc buildNaAdjVocab {} {
  
   global aLessons
   
   set lLesson {}
   
   set na "な"
   
   foreach {english kanji kana tags} $::adj::lNaAdj {
   
        # wtf?
        #set eng [expr (0 < [llength $tags]) ? {$english} : "$english ($tags)"]
        
        set eng $english
        if {[llength $tags]} {
           set eng "$english ($tags)"
        }
        
        lappend lLesson $eng "$kanji$na" "$kana$na"
   
   }
   
   set aLessons("naAdjVocab") $lLesson
   
}

proc buildIAdjVocab {} {
  
   global aLessons
   
   set lLesson {}
   
   foreach {english kanji kana tags} $::adj::lIAdj {
   
        # wtf?
        #set eng [expr (0 < [llength $tags]) ? {$english} : "$english ($tags)"]
        
        set eng $english
        if {[llength $tags]} {
           set eng "$english ($tags)"
        }
        
        lappend lLesson $eng $kanji $kana
   
   }
   
   set aLessons("iAdjVocab") $lLesson
   
}

proc buildAllAdjVocab {} {

    global aLessons

    set na "な"

    foreach "sNative sKanji sKana lTags" $::adj::lIAdj {
	
	    lappend lWords $sNative
	    
		if {[info exists aKana($sNative)]} {
		   puts "\nWARNING - duplicate aKana($sNative) : overwriting $aKana($sNative) with $sKana"
	    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach "sNative sKanji sKana lTags" $::adj::lNaAdj {
	
	    lappend lWords $sNative
	    
		if {[info exists aKana($sNative)]} {
		   puts "\nWARNING - duplicate aKana($sNative) : overwriting $aKana($sNative) with $sKana$na"
	    }
	    
		set aKanji($sNative) $sKanji$na;
		set aKana($sNative) $sKana$na;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set aLessons("adjectivesVocab") $lLesson
	
}

}; # end namespace
# TODO build adjective+noun lessons

lappend lessonBuilders ::adj::buildIAdjVocab ::adj::buildNaAdjVocab ::adj::buildAllAdjVocab
