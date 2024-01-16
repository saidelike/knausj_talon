# override to have better recognition
(clear word left|scratch word):
    edit.extend_word_left()
    edit.delete()
(clear word right|drill word):
    edit.extend_word_right()
    edit.delete()
clear all|scratch all: user.delete_all()
clear line|scratch line: edit.delete_line()

# alternative for "end" or "go way right" that is convenient so we can say "push colon"
push: edit.line_end()