# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# ----- Navigation -----
page up: edit.page_up()
page down: edit.page_down()

go top: edit.file_start()
go bottom: edit.file_end()

head: edit.line_start()
tail: edit.line_end()
center: user.line_middle()

up: edit.up()
down: edit.down()
left: edit.left()
right: edit.right()

before: edit.word_left()
after: edit.word_right()

slap: edit.line_insert_down()
slapper: user.line_insert_down_twice()

indent: edit.indent_more()
detent: edit.indent_less()

# ----- Selection -----
take all: edit.select_all()
take none: edit.select_none()

extend top: edit.extend_file_start()
extend bottom : edit.extend_file_end()
extend head: edit.extend_line_start()
extend tail: edit.extend_line_end()

extend up:                  edit.extend_up()
extend down:                edit.extend_down()
extend left:                edit.extend_left()
extend right:               edit.extend_right()

extend before:              edit.extend_word_left()
extend after:               edit.extend_word_right()

# ----- Delete, undo, redo -----
undo:   edit.undo()
redo:   edit.redo()

deli: edit.delete()
drill: user.delete_right()

# ----- Cut, copy, paste -----
(pace | paste) it: edit.paste()
paste special: edit.paste_match_style()

remove:                     user.delete_word_left()
wipe:                       user.delete_word_right()

# ----- Misc -----
disk: edit.save()

# Insert padding with optional symbols
# I am removing the "pad" word as sometimes saying "period" with conformer D triggers "pad"
# (pad | padding): user.insert_between(" ", " ")
# (pad | padding) <user.symbol_key>+:
(padding): user.insert_between(" ", " ")
(padding) <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")
