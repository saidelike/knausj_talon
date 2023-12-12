app: firefox
-

settings():
    user.scroll_speed = 0.4

# toggle no-script restrictions enforcement for current tab,
# see "manage extension shortcuts" in Firefox
[no] script (switch|toggle): key(shift-alt-m)

# Miscellaneous
copy image:
    mouse_click(1)
    sleep(100ms)
    key(y)

# toggle switching the tree style tab
# https://addons.mozilla.org/en-GB/firefox/addon/tree-style-tab/
bar (switch|toggle): key(f1)

# this allows hiding the actual tabs at the very top
fullscreen switch: key(f11)