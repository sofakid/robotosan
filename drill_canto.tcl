#!/usr/bin/tclsh
proc utfSource {sFile} {

	set fin [open $sFile]
	fconfigure $fin -encoding utf-8
	set script [read $fin]
	close $fin
	return [uplevel 1 $script]
}
	
utfSource vocab_db.tcl


proc go {sLesson} {
	global aLessons;

	checkTimer
	
	#parray aLessons
	
	foreach "sNative sForeign" $aLessons($sLesson) {
		set aWords($sNative) $sForeign;
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
			foreach sAsk $lAsk {
				set bCorrect 0

				while {!$bCorrect} {
			
					set bCorrect [ask $sAsk $aWords($sAsk)]; 
					
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

proc ask {sQuestion lAnswers} {
	puts "\n$sQuestion"
	
	gets stdin sResponse
	
	set bCorrect 0;
	
	foreach sAnswer $lAnswers {
	
		set bCorrect [expr $bCorrect || [expr ![string compare $sAnswer $sResponse]]]
	}
	
	if {!$bCorrect} {
		puts "NO, acceptable answers: $lAnswers"
	}
	
	return $bCorrect
}

# K combinator, return first arg, discards second.
proc K {x y} {set x}

proc lShuffle { lIn } {
	  set n [llength $lIn]
	  while {$n > 0} {
		  set j [expr {int(rand()*$n)}]
		  lappend slist [lindex $lIn $j]
		  set lIn [lreplace [K $lIn [set lIn {}]] $j $j]
		  incr n -1
	  }
	  return $slist
  }

#go {numbers};

proc catalog {argv} {
	
	global aLessons;
	
	set choice 0;
	
	set lLessons [array names aLessons]
	
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

puts $argv

go [catalog $argv] 
