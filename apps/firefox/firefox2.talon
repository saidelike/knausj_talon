app: firefox
-

settings():
    user.scroll_speed = 0.4

# toggle no-script restrictions enforcement for current tab,
# see "manage extension shortcuts" in Firefox
[no] script (switch|toggle): key(shift-alt-m)
