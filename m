#!/usr/bin/tclsh

foreach arg $argv {
  set sna "unknown reason"
  if {![file exists $arg]} {
    set sna [eval exec touch $arg]
  }

  if {[file exists $arg]} {
    eval exec open -e $arg
  } else {
    puts "could not open $arg: $sna"
  }
}
  