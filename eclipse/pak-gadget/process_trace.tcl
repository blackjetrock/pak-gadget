#!/usr/bin/tclsh

# Read and process a pak gadget trace array collected from GDB
# 
# using
#
# set print elements unlimited
# print /x trace
#
#

set f [open trace.txt]
set ttxt [read $f]
close $f

if { [regexp -- "\{(.*)\}" $ttxt all data ] } {
    puts $data
} else {
    puts "No match"
    exit
}

set g [open bytes.txt w]

set i 0

set ascii ""

foreach byte [split $data ","] {
    if { [expr ($i % 16) == 0] } {
	puts $g "   $ascii"
	set ascii ""
    }

    set decbyte [expr $byte]
    set hexbyte [format "%02X" $decbyte]
    puts -nonewline $g "$hexbyte "

    set ch [format "%c" $decbyte]
    if { ![string is print $ch] } {
	set ch "."
    }
    
    set ascii [append ascii $ch]
    incr i 1
}
