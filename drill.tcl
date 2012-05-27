#!/usr/bin/tclsh
proc utfSource {sFile} {

	set fin [open $sFile]
	fconfigure $fin -encoding utf-8
	set script [read $fin]
	close $fin
	return [uplevel 1 $script]
}
	
proc go {sLesson} {
	global aLessons;

	checkTimer
	
	#parray aLessons
	
	foreach "sNative sKanji sKana" $aLessons($sLesson) {
	
		if {[info exists aKana($sNative)]} {
		   puts "\nWARNING - duplicate aKana($sNative) : overwriting $aKana($sNative) with $sKana"
	    }
	    
		set aWords($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	set lWords [lShuffle [array names aWords]];
	
	
	set n [llength $lWords]
	
	set iGroupSize 4
	set iRepetitions 3
	
	for {set i 0} {$i < $n} {incr i $iGroupSize} {
		
		set iExtraReps 0
		
		puts "Round $i of $n" 
		
		set lAsk ""
		
		for {set j 0} {$j < $iGroupSize} {incr j} {
			lappend lAsk [lindex $lWords [expr ($i + $j) % $n]]
		}
		
		for {set j 0} {$j < $iRepetitions} {incr j} {
		    
		    set sLastWord [lindex $lAsk [expr [llength $lAsk] -1]]
		    
		    #puts "lAsk: $lAsk\nsLastWord: $sLastWord"
		    
		    # shuffle mistakes into deck
		    set lAsk [lShuffleOnce $lAsk]
		    
		    
		    
		    #puts "j: $j, lAsk: $lAsk"
		    
			foreach sAsk $lAsk {
				set bCorrect 0

				while {!$bCorrect} {
			
					set bCorrect [ask $sAsk $aWords($sAsk) $aKana($sAsk) ]; 
					
					if {!$bCorrect} {
						if {$iExtraReps < 2} {
							incr iExtraReps;
						}
						
						lappend lAsk $sAsk;
					}
					
				} 
			}
		}		
	}
	
	puts "Done in [checkTimer]."
	
}

# TODO - make this stuff work
#
# eliminate asking the same thing twice in a row
proc insertDupAwayFromNeighbor {sWord lWords} {

}

proc spreadNeighboringDups {sLastWord lTarget} {

   set n [llength $lTarget]

   for {set i 0} {$n > $i} {incr i} {
      
      if {$sLastWord == [lindex $lTarget $i]} {
         set lTarget [zapNeighboringDups $sLastWord [lrange ]  
      } else {
      
      }
      
      set sLastWord [lindex $lTarget $i]
   }

}

proc ask {sQuestion lAnswers lKana} {
	puts "\n$sQuestion"
	
	gets stdin sResponse
	
	set bCorrect 0;
	
	foreach sAnswer $lAnswers {
	
		set bCorrect [expr $bCorrect || [expr ![string compare $sAnswer $sResponse]]]
	}
	
	foreach sAnswer $lKana {
	
		set bCorrect [expr $bCorrect || [expr ![string compare $sAnswer $sResponse]]]
	}
	
	
	if {!$bCorrect} {
		puts "NO: $lAnswers ( $lKana )"
	}
	
	return $bCorrect
}

# K combinator, return first arg, discards second.
proc K {x y} {set x}

proc lShuffleOnce { lIn } {
	  set n [llength $lIn]
	  while {$n > 0} {
		  set j [expr {int(rand()*$n)}]
		  lappend slist [lindex $lIn $j]
		  set lIn [lreplace [K $lIn [set lIn {}]] $j $j]
		  incr n -1
	  }
	  return $slist
}

proc lShuffle { lIn } {

  # cheap and slutty attempt to randomize the randomizer
  for {set i 0} { 10 > $i } {incr i} {
  
    for {set j [expr int(rand()*$i)]} { 0 < $j } {incr j -1} {
       set x [expr rand()]
    }
  
  }


  for {set n [expr int(rand()*5)]; set i 0} {$n > $i} {incr i} {
    set lIn [lShuffleOnce $lIn]
  }

  return [lShuffleOnce $lIn]
}


#go {numbers};

proc catalog {argv} {
	
	global aLessons;
	
	set choice 0;
	
	set lLessons [lsort [array names aLessons]]
	
	while {$choice == 0} {
		puts "Please choose a lesson:"
		set i 1;
		foreach sLesson $lLessons {
			
			puts "  $i\t$sLesson"
			
			incr i
		}
		
		if {[llength $argv] > 0} {
		   set sChoice $argv
		} else {
			gets stdin sChoice
		}
		
		if {![catch {set choice [expr int($sChoice)]} uDummy]} {
			if {$choice > [llength $lLessons]} {
				set choice 0
			}
		}
	}
	
	return [lindex $lLessons [expr $choice -1]]
	
}

proc checkTimer {} {
	global startTime
	
	set now [exec date +%s]
	
	set out [expr $now - $startTime]
	
	set startTime $now
	
	return [format "%.2d:%.2d" [expr $out / 60] [expr $out % 60]]
}

proc random {n} {
    return [expr (int(rand()*31)*41)%$n]
}



# ---
# run
# ---

puts $argv

#load lessons
utfSource ja_lessons.tcl

go [catalog $argv] 
