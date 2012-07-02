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
   return [::naAdj::selectNaAdj $meta]
}

proc selectIAdj {meta} {
   return [::iAdj::selectIAdj $meta]
}

proc selectAdj {meta} {
  set ::adj::lastSelect [expr int(rand()*10) % 2]
  #puts $::adj::lastSelect
  return $::adj::lastSelect ? [::iAdj::selectIAdj $meta] : [::naAdj::selectNaAdj $meta]
}

# ---------------
# Lesson Builders
# ---------------
proc buildNaAdjVocab {} {
  
   global aLessons
   
   set lLesson {}
   
   set na "な"
   
   foreach {english kanji kana tags} $::naAdj::lNaAdj {
   
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
   
   foreach {english kanji kana tags} $::iAdj::lIAdj {
   
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

    foreach "sNative sKanji sKana lTags" $::iAdj::lIAdj {
	
	    lappend lWords $sNative
	    
		if {[info exists aKana($sNative)]} {
		   puts "\nWARNING - duplicate aKana($sNative) : overwriting $aKana($sNative) with $sKana"
	    }
	    
		set aKanji($sNative) $sKanji$i;
		set aKana($sNative) $sKana$i;
	}
	
	foreach "sNative sKanji sKana lTags" $::naAdj::lNaAdj {
	
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
