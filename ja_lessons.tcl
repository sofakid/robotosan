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

  ja_ui.tcl

  ja_vocab.tcl
  ja_verbs.tcl
  ja_nouns.tcl
  ja_adjectives.tcl
  ja_i_adj.tcl
  ja_na_adj.tcl
  ja_misc.tcl
  ja_temporal.tcl

  ja_prim.tcl
  ja_patterns.tcl
  
} { utfSource $sFile }

::ui::yellow "Building lessons..."
set i 0
foreach builder $lessonBuilders {

   switch $i {

    0 ::ui::lightGreen
    1 ::ui::lightBlue
    2 ::ui::lightCyan
    3 ::ui::lightRed
    4 ::ui::lightPurple

   }

   set i [expr ($i + 1) % 5]

   puts -nonewline "  - $builder ..."

   eval $builder
   
   ::ui::lightGreen "... done."
}
::ui::lightBlue "Lessons built."

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


