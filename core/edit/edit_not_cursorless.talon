not tag: user.cursorless
-

# Selection
chuck (this | dis): user.delete_selection_or_word()
cut (this | dis): user.cut_selection_or_word()
copy (this | dis): user.copy_selection_or_word()
paste to (this | dis): user.paste_to_selection_or_word()

# Word
take token: edit.select_word()
cut token: user.cut_word()
copy token: user.copy_word()
(pace | paste) to token: user.paste_word()
chuck token: edit.delete_word()

# Line
pre line: edit.line_start()
post line: edit.line_end()
take line: edit.select_line()
cut line: user.cut_line()
copy line: user.copy_line()
(pace | paste) to line: user.paste_line()
chuck line: edit.delete_line()
clone line: edit.line_clone()
clone (this | dis): edit.line_clone()
drink line: edit.line_insert_up()
pour line: edit.line_insert_down()

# Head / tail
take head: user.select_line_start()
take tail: user.select_line_end()
cut head: user.cut_line_start()
cut tail: user.cut_line_end()
copy head: user.copy_line_start()
copy tail: user.copy_line_end()
(pace | paste) to head: user.paste_line_start()
(pace | paste) to tail: user.paste_line_end()
chuck head: user.delete_line_start()
chuck tail: user.delete_line_end()

# Paragraph
# XXX

# File / document
pre file: edit.file_start()
post file: edit.file_post()
take file: edit.select_all()
cut file: user.cut_all()
copy file: user.copy_all()
(pace | paste) to file: user.paste_all()
chuck file: user.delete_all()

# Combinations of above
chuck head file:
    edit.extend_file_start()
    edit.delete()
chuck tail file:
    edit.extend_file_end()
    edit.delete()

# Reformat
# XXX

# Homophones

# Wrappers
# XXX