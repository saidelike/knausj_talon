# we override the ones from standard.talon because we added shorter version
# and also sometimes "undo that" is not recognised well
(undo that | undo | nope):  edit.undo()
(redo that | redo | yes):   edit.redo()
