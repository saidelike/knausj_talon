not mode: sleep
-

# "dictation" can be interpreted as "hush" so use "dictate" instead
^(dictation mode|dictate)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
