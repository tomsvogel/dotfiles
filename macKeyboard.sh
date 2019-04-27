setxkbmap -option
# setxkbmap -option caps:escape
setxkbmap -layout de -variant nodeadkeys -option caps:escape  
xmodmap -e 'keycode 49 = less greater less greater bar brokenbar bar' -e 'keycode 94 = dead_circumflex degree dead_circumflex degree U2032 U2033 U2032' -e "keycode 108 = Super_R" -e "keycode 134 = ISO_Level3_Shift"
 