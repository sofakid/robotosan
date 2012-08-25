

namespace eval ui {

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

 variable eBlue "\033\[0;34m"
 variable ePink "\033\[1;35m"
 variable eWhite "\033\[1;37m"
 variable eLightGrey "\033\[0;37m"
 variable eLightBlue "\033\[1;34m"
 variable eYellow "\033\[1;33m"
 variable eLightRed "\033\[1;31m"
 variable eRed "\033\[0;31m"
 variable eGrey "\033\[1;30m"
 variable eLightGreen "\033\[1;32m"
 variable eGreen "\033\[0;32m"
 
 variable eInvert "\033\[7m"
 variable eReset "\033\[0m"


  proc colour {c s} {
    if {"" == $s} {
      set reset ""
    } else {
      set reset $::ui::eReset
    }
    puts -nonewline "$c$s$reset"
  }

  proc blue {{s ""}} {
     colour $::ui::eBlue $s
  }

  proc lightBlue {{s ""}} {
     colour $::ui::eLightBlue $s
  }

  proc pink {{s ""}} {
     colour $::ui::ePink $s
  }

  proc yellow {{s ""}} {
     colour $::ui::eYellow $s
  }


}

::ui::yellow "Yaaay"
