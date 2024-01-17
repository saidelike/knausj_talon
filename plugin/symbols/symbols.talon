new line: "\n"
double dash: "--"
triple quote: "'''"
(triple grave | triple back tick | gravy): insert("```")
(dot dot | dotdot): ".."
ellipsis: "..."
#(comma and | spamma | spam): ", "
# arrow: "->"
# dub arrow: "=>"
empty dub string: user.insert_between('"', '"')
empty escaped (dub string | dub quotes): user.insert_between('\\"', '\\"')
empty string: user.insert_between("'", "'")
empty escaped string: user.insert_between("\\'", "\\'")
(inside parens | args): user.insert_between("(", ")")
inside (squares | square brackets | list): user.insert_between("[", "]")
inside (bracket | braces): user.insert_between("{", "}")
inside percent: user.insert_between("%", "%")
inside (quotes | string): user.insert_between("'", "'")
inside (double quotes | dub quotes): user.insert_between('"', '"')
inside (graves | back ticks): user.insert_between("`", "`")
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(bracket | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste("'{text}'")
(double quote | dub quote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(grave | back tick) that:
    text = edit.selected_text()
    user.paste("`{text}`")

# symbols to imitate Cursorless
empty box: "[]"
empty curly: "{}"
empty diamond: "<>"
empty quad: '""'
empty round: "()"
empty skis: "``"
empty twin: "''"

# this also works but we instead use Andreas' method in delimiters.py
# box: user.insert_between('[', ']')
# curly: user.insert_between('{', '}')
# diamond: user.insert_between('<', '>')
# quad: user.insert_between('"', '"')
# round: user.insert_between('(', ')')
# skis: user.insert_between('`', '`')
# twin: user.insert_between("'", "'")

box this:
    text = edit.selected_text()
    user.paste("[{text}]")
curly this:
    text = edit.selected_text()
    user.paste("{{{text}}}")
diamond this:
    text = edit.selected_text()
    user.paste("<{text}>")
quad this:
    text = edit.selected_text()
    user.paste('"{text}"')
round this:
    text = edit.selected_text()
    user.paste("({text})")
skis this:
    text = edit.selected_text()
    user.paste("'{text}'")
twin this:
    text = edit.selected_text()
    user.paste("`{text}`")