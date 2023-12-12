from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: windows
app: microsoft_teams
"""


@ctx.action_class("user")
class UserActions:
    def mute_microphone():
        # this works in a meeting but not in the Teams test call feature
        actions.key("ctrl-shift-m")
