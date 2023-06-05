
# override to make it shorter
(disk|file save): edit.save()

# override to have better recognition
(clear word left|scratch word):
    edit.extend_word_left()
    edit.delete()
(clear word right|drill word):
    edit.extend_word_right()
    edit.delete()

# alternative for "end" or "go way right" that is convenient so we can say "push colon"
push: edit.line_end()