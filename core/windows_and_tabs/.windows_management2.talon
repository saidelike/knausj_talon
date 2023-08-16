
# special cases to make it faster to focus certain apps
# XXX - not all of them have been tested below to chain commands after focus so mileage may vary
# "coder" and "chromer" conflict with "comma" atm so disabling file to avoid false negatives
coder: 
    user.switcher_focus("code")
    sleep(300ms)
    user.parse_phrase(phrase or "")
foxer: 
    user.switcher_focus("firefox")
    sleep(200ms)
    user.parse_phrase(phrase or "")
chromer: 
    user.switcher_focus("chrome")
    sleep(200ms)
    user.parse_phrase(phrase or "")
edger: 
    user.switcher_focus("microsoft edge")
    sleep(200ms)
    user.parse_phrase(phrase or "")
termer: 
    user.switcher_focus("windows terminal")
    sleep(500ms)
    user.parse_phrase(phrase or "")
explorer: 
    user.switcher_focus("windows explorer")
    sleep(200ms)
    user.parse_phrase(phrase or "")