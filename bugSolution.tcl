proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return ""  ;# Return empty string instead of error
  } elseif {[llength $list] == 0} {
    return "" ; # Handle empty list case
  }
  return [lindex $list $index]
}

#Example Usage
set my_list {a b c d e}
puts [get_element $my_list 2]  ;# Output: c
puts [get_element $my_list 10] ;# Output: 
puts [get_element {} 0] ; # Output: 