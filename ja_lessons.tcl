global aLessons;
global startTime;
global lessonBuilders;

set lessonBuilders {}

set startTime 0;

proc importBuilders {lBuilders} {
  global lessonBuilders
  
  foreach pBuilder $lBuilders {
     lappend lessonBuilders $pBuilder
  }
}


foreach sFile {

  ja_vocab.tcl
  ja_verbs.tcl
  ja_nouns.tcl
  ja_adjectives.tcl
  ja_misc.tcl

  ja_prim.tcl
  ja_patterns.tcl
  
} { utfSource $sFile }

puts "Building lessons..."
foreach builder $lessonBuilders {

   puts -nonewline "  - $builder ..."

   eval $builder
   
   puts "... done."
}
puts "Lessons built."

# ---------
# Test shit
# ---------

#parray ::aLessons

proc testShit {} {
    foreach {eng kanji kana} $lGodan {
      set a [conjugateGodan $kanji]
      foreach b $a {
        puts $b
      }
    }
    
    foreach {eng kanji kana} $lIchidan {
       set a [conjugateIchidan $kanji]
       foreach b $a {
          puts $b
       }
    }
}

#testShit


