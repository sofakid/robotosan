# -------------
# い-Adjectives
# -------------
#
# TODO: think about splitting this into い and な adjective 
# namespaces, they are so different.
 
namespace eval iAdj {

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

# -----------
# Conjugation
# -----------


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
# compare with な-adj:
#
#  just drop the な and conjugate the です

proc conjI {meta} {

   set head [return 0 <= [lsearch $meta "neg"] ? "くな" : ""]
   
   set tail [eval 0 <= [lindex $meta "past"] ? "かった" : "い"]
   
   return "$head$tail"
   
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

# In adjectives, v is not a list of bases like in verbs. 
# v is a quadruple {eng kanj kana meta}
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

proc selectIAdj {meta} {
   return [selectFromList $::iAdj::lIAdj $meta][conjI $meta]
}

# ---------------
# Lesson Builders
# ---------------

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

}; # end namespace
# TODO build adjective+noun lessons

#lappend lessonBuilders ::adj::buildIAdjVocab ::adj::buildNaAdjVocab ::adj::buildAllAdjVocab
