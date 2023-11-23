# Windows Desktops (default)

# we comment these as we only create 2 desktops and work with these
# so we don't want extra commands we won't use
# desk new:                key(win-ctrl-d)
# desk close:              key(win-ctrl-f4)

desk (right | next | talon):     key(win-ctrl-right)
desk (left | last | work | main):      key(win-ctrl-left)

# this assumes MoveToDesktop is started
window move desk (right | next | talon):       key(win-alt-right)
window move desk (left | last | work | main):  key(win-alt-left)
window move desk one:             key(win-alt-left)
window move desk two:             key(win-alt-right)