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

# generate blocks like .font-size-14[] or .font-size-16[]
font size <number_small>:
    user.cursorless_insert_snippet(".font-size-{number_small}[\n$content\n]")

font size <number_small> wrap <user.cursorless_target>:
    user.cursorless_wrap_with_snippet(".font-size-{number_small}[\n$content\n]", cursorless_target, "content")

center:
    edit.line_start()
    ".center["
    edit.line_end()
    "]"

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
