# -1 because we are repeating, so the initial command counts as one
# we comment this in order to avoid false positives, repeating 10 times if "tenth" was recognised instead of "change"
# and we use the "<number_small> times" form instead
#<user.ordinals>: core.repeat_command(ordinals - 1)
<number_small> times: core.repeat_command(number_small - 1)
(repeat that | twice): core.repeat_command(1)
trice: core.repeat_command(2)
repeat that <number_small> [times]: core.repeat_command(number_small)

(repeat phrase | again) [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)
