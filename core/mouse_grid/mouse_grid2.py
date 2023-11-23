from talon import Context, Module

mod = Module()
ctx = Context()


@mod.action_class
class GridActions:
    # so codes that still call that are happy, since we disabled it globally
    # this allows not having to modify all files calling user.grid_close() such as in mouse.talon
    def grid_close():
        """Close the active grid"""
        pass


# we add an empty context that implements the action
@ctx.action_class("user")
class Actions:
    def grid_close():
        pass
