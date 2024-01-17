# override to have better recognition
deli word:
    edit.extend_word_left()
    edit.delete()
drill word:
    edit.extend_word_right()
    edit.delete()
deli all: user.delete_all()
deli line: edit.delete_line()

# alternative for "end" or "go way right" that is convenient so we can say "push colon"
#push: edit.line_end()