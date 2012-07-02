# -------------
# な-Adjectives
# -------------

namespace eval naAdj {

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
   return [selectFromList $::naAdj::lNaAdj $meta]
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

}; # end namespace
# TODO build adjective+noun lessons

#lappend lessonBuilders ::adj::buildIAdjVocab ::adj::buildNaAdjVocab ::adj::buildAllAdjVocab
