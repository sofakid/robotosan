# -----------------------
# exapandable primatives
# -----------------------
namespace eval prim {

variable lSubjects

variable tags {

  <n>  selectNoun
  <pn> selectPronoun

}

variable subjectProtos {

  {<pn>}    {<pn>}          {pronoun person}
  {<n>}     {<n>}           {noun person place thing}
  {この<n>}        {this <n>}      {close person thing}
  {その<n>}        {that <n>}      {close person thing}
  {あの<n>}        {that <n> over there}   {noun far person thing}
  {あなたの<n>}        {your <n>}   {noun thing}
  {私の<n>}        {my <n>}   {noun thing}

}

proc tagPn {fmt word} {
   return [tag $fmt "<pn>" $word]
}

proc tagN {fmt word} {
   return [tag $fmt "<n>" $word]
}

proc tag {fmt tag word} {
   set x [string first $tag $fmt]
   return [string replace $fmt $x [expr $x + [string length $tag] -1] $word]
}

proc scanLine {sJa sEn lTags} { 
   set sNextBeg -1
   while {[set sNextBeg [string first "<" $sJa [expr $sNextBeg + 1]]] != -1} {
      set sNextEnd [string first ">" $sJa $sNextBeg]
      set sTag [string range $sJa $sNextBeg $sNextEnd]
      
      switch $sTag {
         "<pn>" {
            foreach {pnEng pnKanji pnKana pnKeywords} $::nouns::lPronouns {
               set lSubject [list [tagPn $sEn $pnEng] [tagPn $sJa $pnKanji] [tagPn $sJa $pnKana] $lTags]
               lappend ::prim::lSubjects $lSubject
            }
         }
         
         "<n>" {
             if {[string first places $lTags] != -1} {
                foreach {pnEng pnKanji pnKana} $::nouns::lNounPlaces {
                   set lSubject [list [tagN $sEn $pnEng] [tagN $sJa $pnKanji] [tagN $sJa $pnKana] $lTags]
                   lappend ::prim::lSubjects $lSubject
                }         
             }

             if {[string first thing $lTags] != -1} {
                foreach {pnEng pnKanji pnKana} $::nouns::lNounThings {
                   set lSubject [list [tagN $sEn $pnEng] [tagN $sJa $pnKanji] [tagN $sJa $pnKana] $lTags]
                   lappend ::prim::lSubjects $lSubject
                }         
             }
         }
      }
   }   
}

proc selectNoun {} {

}

proc selectPronoun {} {
  
}

proc genSubjects {} {

  foreach {sJa sEn lTags} $::prim::subjectProtos {
  
      scanLine $sJa $sEn $lTags
        
  }

}

proc randomSubject {tags} {

   set n [llength $::prim::lSubjects]
   set j [expr {int(rand()*$n)}]
   return [lindex $::prim::lSubjects $j]

}


}; # end namespace


proc buildPrimatives {} {
   
    ::prim::genSubjects
    
    #puts $::prim::lSubjects
    
}

lappend lessonBuilders buildPrimatives
