tag: user.markdown
-

slide:
    edit.line_start()
    key(enter)
    "---"
    key(enter:2)
    "# "

comment:
    edit.line_start()
    key(enter)
    "???"
    key(enter:2)

font size fourteen:
    edit.line_start()
    ".font-size-14[]"
    key(left)
    key(enter:1)
    edit.line_start()

font size sixteen:
    edit.line_start()
    ".font-size-16[]"
    key(left)
    key(enter:1)
    edit.line_start()

center:
    edit.line_start()
    ".center["
    edit.line_end()
    "]"

left column:
    edit.line_start()
    ".left-column[]"
    key(left)
    key(enter:1)
    edit.line_start()

right column:
    edit.line_start()
    ".right-column[]"
    key(left)
    key(enter:1)
    edit.line_start()

# we override the ones from markdown.talon because we changed the tab width
list [one]:
    edit.line_start()
    "- "
list two:
    edit.line_start()
    "  - "
list three:
    edit.line_start()
    "    - "
list four:
    edit.line_start()
    "      - "
list five:
    edit.line_start()
    "        - "
list six:
    edit.line_start()
    "          - "

# XXX width
#![](img/xxx.png?width=400px)
#![](img/yyy.png?width=85%)

remark build:
    edit.save()
    user.switcher_focus("windows terminal")
    sleep(100ms)
    key(up)
    sleep(100ms)
    key(enter)
    # switch fast to chrome but we will wait more to make sure it finished building
    user.switcher_focus("chrome")
    sleep(2s)
    key(ctrl-r)
