# ----------
# Adjectives
# ----------
#
# TODO: think about splitting this into い and な adjective 
# namespaces, they are so different.
 
namespace eval adj {

# 0 is Na
# 1 is I
variable lastSelect 0

# -------------
# い Adjectives
# -------------
# just the base, the い is implied and added when neccessary
variable lIAdj {
  {large}           {大き} {おおき} {}
  {big}             {大き} {おおき} {}
  {small}           {小さ} {ちいさ} {}
  {little}          {小さ} {ちいさ} {}
  {new}             {新し} {あたらし} {}
  {old}             {古} {ふる} {!age}
  
  {good}                            {い} {よ} {}
  {bad}                             {悪} {わる} {}
  {hot}                             {{暑} {熱}} {あつ} {weather touch}
  {cold}                            {寒} {さむ} {weather}
  {cold}                            {冷た} {つめた} {touch}
  {difficult}                       {難し} {むずかし} {}
  {easy}                            {易し} {やさし} {}
  {expensive}                       {高} {たか} {}
  {tall}                            {高} {たか} {height}
  {high}                            {高} {たか} {height}
  {inexpensive}                     {安} {やす} {}
  {low}                             {低} {ひく} {building height}
  {short}                           {低} {ひく} {height}
  {interesting}                     {面白} {おもしろ} {}
  {funny}                           {面白} {おもしろ} {comedy joke}
  {delicious}                       {おいし} {おいし} {food}
  {busy}                            {忙し} {いそがし} {}
  {enjoyable}                       {楽し} {たのし} {}
  
  {white}   {白} {しろ} {colour}
  {black}   {黒} {くろ} {colour}
  {red}     {赤} {あか} {colour}
  {blue}    {青} {あお} {colour}
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

# -----------
# Conjugation
# -----------

# In adjectives, v is not a list of bases like in verbs. 
# v is a quadruple {eng kanj kana meta}
#
# I regex the last char and treat it accordingly 


#
# い-adj:
# 
#  conjugate the い, leave the です unchanged:
#    
#     pres: い
#     past: かった
#
#     neg: くな + tensify い
#
# this い is something, means something. the negative base A verbs use
# ない as well, but don't conjugate in the nonnegative..
#
# な-adj:
#
#  just drop the な and conjugate the です

proc conjI {meta} {

   set head [return 0 <= [lsearch $meta "neg"] ? "くな" : ""]
   
   set tail [eval 0 <= [lindex $meta "past"] ? "かった" : "い"]
   
   return "$head$tail"
   
}

proc transNegI {w} {

   set n [expr [string length $w] -1]
   set b [string range $w 0 [expr $n -1]]
   
   set tail "くない"
   
   return "$b$tail"
}

proc transPastI {w} {

   set n [expr [string length $w] -1]
   set b [string range $w 0 [expr $n -1]]
   
   set tail "かった"
   
   return "$b$tail"
}

proc transPastNegI {w} {

   set n [expr [string length $w] -1]
   set b [string range $w 0 [expr $n -1]]
   
   set tail "くなかった"
   
   return "$b$tail"
}

# v is a base of an い-adj in a list {eng kanji kana meta}
# conj is a list of items from {"neg" "past"}
proc transConjI {v conj} {
 
   set i [congI $conj]
 
   foreach {eng kanji kana meta} $v {
      
      set lOut [list $eng $kanji$i $kana$i $meta]
   
   } 
   
   return $lOut
}


proc vNegPres {v} {
   return [vNeg $v]
}

proc vNegFut {v} {
   return [vNeg $v]
}

proc vNeg {v} {
   return "[baseA $v]ない"
}

proc vNegPast {v} {
   return "[baseA $v]なかった"
}

proc vPres {v} {
   return [vPresFut $v]
}

proc vFut {v} {
   return [vPresFut $v]
}

proc vPresFut {v} {
   return "[baseU $v]"
}

proc vPast {v} {
   return "[baseTa $v]"
}

# ---------
# Selectors
# ---------

proc selectFromList {lAdj tags} {
   set n [llength $lAdj]
   set m [expr $n / 4]
   
   # make this way better
   set i [expr (int((rand()*31*$m)) % $m) * 4]
   
   # todo tags
   
   return [lrange $lAdj $i [expr $i + 3]]
   
}

proc selectNaAdj {meta} {
   return [selectFromList $::adj::lNaAdj $meta]
}

proc selectIAdj {meta} {
   return [selectFromList $::adj::lIAdj $meta][conjI $meta]
}

proc selectAdj {meta} {
  set ::adj::lastSelect [expr int(rand()*10) % 2]
  #puts $::adj::lastSelect
  return $::adj::lastSelect ? [selectIAdj $meta] : [selectNaAdj $meta]
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
   
   set i "い"
   
   foreach {english kanji kana tags} $::adj::lIAdj {
   
        # wtf?
        #set eng [expr (0 < [llength $tags]) ? {$english} : "$english ($tags)"]
        
        set eng $english
        if {[llength $tags]} {
           set eng "$english ($tags)"
        }
        
        lappend lLesson $eng $kanji$i $kana$i
   
   }
   
   set aLessons("iAdjVocab") $lLesson
   
}

proc buildAllAdjVocab {} {

    global aLessons

    set na "な"
    set i "い"

    foreach "sNative sKanji sKana lTags" $::adj::lIAdj {
	
	    lappend lWords $sNative
	    
		if {[info exists aKana($sNative)]} {
		   puts "\nWARNING - duplicate aKana($sNative) : overwriting $aKana($sNative) with $sKana"
	    }
	    
		set aKanji($sNative) $sKanji$i;
		set aKana($sNative) $sKana$i;
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
