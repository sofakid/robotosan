namespace eval ui {

  foreach {name code} {

    black       0;30     darkGray     1;30
    blue        0;34     lightBlue    1;34
    green       0;32     lightGreen   1;32
    cyan        0;36     lightCyan    1;36
    red         0;31     lightRed     1;31
    purple      0;35     lightPurple  1;35
    brown       0;33     yellow       1;33
    lightGray   0;37     white        1;37

    invert      7        
    reset       0

  } {
  
    # auto define ::ui::black ::ui::green etc...
    #
    # these output to the screen
    #
    set body "::ui::colour \"$code\" \$s"
    eval proc $name {{{s {}}}} {$body}

    # auto define ::ui::blackCode ::ui::greenCode etc...
    #
    # these return the ansi code, for saving in strings to be later output
    #
    set kode Code
    set body "return \[::ui::ansi \"$code\"\]"
    eval proc $name$kode {{}} {$body}
      
  }

  proc colour {c s} {
    puts -nonewline "[ansi $c]$s"
  }

  proc ansi {code} {
    set m m
    return "\033\[$code$m"
  }


  # --------
  # Std msgs
  # --------

  proc warning {reason action} {
    ::ui::white "\n\["
    ::ui::lightRed "WARNING"
    ::ui::white "\]"
    ::ui::darkGray " - "
    ::ui::lightGray "$reason"
    ::ui::darkGray " : "
    ::ui::lightGray "$action"
    ::ui::reset "\n"
  }

  proc overwriting {native victim perp} {

     ::ui::warning "duplicate [::ui::whiteCode]$native" "overwriting [::ui::lightRedCode]$victim[::ui::lightGrayCode] with [::ui::greenCode]$perp"

  }

  proc prototype {s} {

     set out [::ui::whiteCode]
     
     while {-1 < [set i [string first < $s]]} {

        set j [string first > $s]

        if {0 != $i} {
          set out "$out[string range $s 0 [expr $i -1]]"
        }
        

        set token [string range $s [expr $i + 1] [expr $j -1 ]]

        set out "$out[::ui::darkGrayCode]<[::ui::brownCode]$token[::ui::darkGrayCode]>[::ui::whiteCode]"

        set s [string range $s [expr $j+1] end]
        

     }

     set out "$out$s"

     puts -nonewline $out

  }

  proc english {s {light ::ui::lightBlueCode} {dark ::ui::darkGrayCode}} {

     # fucking tcl bullshit
     if {0 == [string first : $light]} {
        set light [$light]
        set dark [$dark]
     }

     set out $light
     
     while {-1 < [set i [string first ( $s]]} {

        set j [string first ) $s]

        if {0 != $i} {
          set out "$out[string range $s 0 [expr $i -1]]"
        }
        

        set token [string range $s $i $j]

        set out "$out$dark$token$light"

        set s [string range $s [expr $j+1] end]
        

     }

     set out "$out$s"

     puts -nonewline $out

  }

}

#set s "<n1>と<n2>の<between>に<n-inanimate>が<aru>"
#puts $s
#::ui::prototype $s


#puts "Testing [::ui::lightCyanCode]M[::ui::yellowCode]O[::ui::lightPurpleCode]T[::ui::lightGreenCode]H[::ui::lightRedCode]A"
#puts "        [::ui::lightCyanCode]F[::ui::yellowCode]U[::ui::lightPurpleCode]C[::ui::lightGreenCode]K[::ui::lightRedCode]A"

