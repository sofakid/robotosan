# --------
# temporal
# --------

namespace eval temporal {

variable lTimeAdverb {
  {last week}   {先週} {せんしゅう} {past}
  {this week}   {今週} {こんしゅう} {present}
  {next week}   {来週} {らいしゅう} {future}
  {last month}  {先月} {せんげつ} {past}
  {this month}  {今月} {こんげつ} {present}
  {next month}  {来月} {らいげつ} {future}
  {the year before last} {一昨年} {おととし} {past}
  {last year}   {去年} {きょねん} {past}
  {this year}   {今年} {ことし} {present}
  {next year}   {来年} {らいねん} {future}
   {morning} {朝} {あさ} {}
   {daytime, noon} {昼} {ひる} {}
   {night} {晩} {ばん} {}
   {evening} {夜} {よる} {}
   {the day before yesterday} {一昨日} {おととい} {past}
   {yesterday } {昨日} {きのう} {past}
   {today} {今日} {きょう} {present}
   {tomorrow} {明日} {あした} {future}
   {the day after tomorrow} {明後日} {あさって} {future}
   {this morning} {今朝} {けさ} {}
   {this evening, tonight} {今晩} {こんばん} {}
   {lunchtime} {昼休み} {ひるやすみ} {}
   {every morning} {毎朝} {まいあさ} {}
   {every night} {毎晩} {まいばん} {}
   {every day} {毎日} {まいにち} {}
   {Monday} {月曜日} {げつようび} {}
   {Tuesday} {火曜日} {かようび} {}
   {Wednesday} {水曜日} {すいようび} {}
   {Thursday} {木曜日} {もくようび} {}
   {Friday} {金曜日} {きんようび} {}
   {Saturday} {土曜日} {どようび} {}
   {Sunday} {日曜日} {にちようび} {}
   {now} {今} {いま} {present}
}

variable sna {
  
  {when}        {いつ} {いつ}

   {-oclock} {時} {じ}
   {-minute} {分} {ぶん}
   {half} {半} {はん}
   {what time} {何時} {なんじ}
   {what minute} {何分} {なんぷん}
   {a.m. / morning} {午前} {ごぜん}
   {p.m. / afternoon} {午後} {ごご}
   {what day of the week} {何曜日} {なんようび}
   {from -} {から} {から}
   {up to -} {まで} {まで}
}

proc selectFromList {lAdj tags} {
    set n [llength $lAdj]
    set m [expr $n / 4]
   
    # make this way better
    
    set found 0
    
    for {set z 0} {20 > $z} {incr z} {
        if {$found} break
        
        set i [expr (int((rand()*31*$m)) % $m) * 4]
   
        set lWord [lrange $lAdj $i end]
   
        foreach {a b c d} $lWord {
            if {$found} break
            
            #puts " MOTHERFUCKERMOTHERFUCKER $a . $b . $c . $d ."
            
            if { 0 == [llength $tags]} continue
            
            #puts " &&&& $tags &&&& $d &&& $z &&& $found"
        
            foreach tag $tags {
                if {-1 < [lsearch $d $tag]} {
                    #puts "Found match $d $tag : $lWord"
                    set found 1
                    break
                }
            }
        }
    }
   
    if {20 == $z} {
        puts "FAIL finding matching tag {$tags}"
        exit
    }
    
    return [lrange $lWord 0 3]
   
}

proc selectTimeAdverb {tags} {
   return [selectFromList $::temporal::lTimeAdverb $tags]
}

# ---------------
# Lesson Builders
# ---------------


}; # end namespace
# TODO build adjective+noun lessons

#lappend lessonBuilders ::adj::buildIAdjVocab ::adj::buildNaAdjVocab ::adj::buildAllAdjVocab
