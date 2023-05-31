
# special cases to make it faster to focus certain apps
# XXX - could actually support pasting a phrase in the focused app like in https://github.com/pokey/pokey_talon/blob/45d1071f217417177ef73cba07f2f5653b6f994f/core/windows_and_tabs/window_management.talon#L27
coder: user.switcher_focus("code")
foxer: user.switcher_focus("firefox")
termer: user.switcher_focus("windows terminal")
explorer: user.switcher_focus("windows explorer")