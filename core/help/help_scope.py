from talon import Context, Module, actions, app, imgui, scope, ui

ctx = Context()
mod = Module()
mod.tag("help_scope_open", "tag for showing the scope help gui")

setting_max_length = mod.setting(
    "help_scope_max_length",
    type=int,
    default=50,
)


# This means that it will always open in the top left corner of the main screen
# @imgui.open(x=ui.main_screen().x)
# this prints it in the top left corner of my right screen
@imgui.open(x=ui.screen.screens()[2].x, y=ui.screen.screens()[2].y)
def gui(gui: imgui.GUI):
    gui.text("Scope")
    gui.line()
    gui.spacer()
    gui.text("Modes")
    gui.line()
    for mode in sorted(scope.get("mode")):
        gui.text(mode)
    gui.spacer()
    gui.text("Tags")
    gui.line()
    for tag in sorted(scope.get("tag")):
        gui.text(tag)
    gui.spacer()
    gui.text("Misc")
    gui.line()
    ignore = {"main", "mode", "tag"}
    keys = {*scope.data.keys(), *scope.data["main"].keys()}
    for key in sorted(keys):
        if key not in ignore:
            value = scope.get(key)
            print_value(gui, key, value, ignore)
    gui.spacer()
    if gui.button("Hide"):
        actions.user.help_scope_toggle()


def print_value(gui: imgui.GUI, path: str, value, ignore: set[str] = {}):
    if isinstance(value, dict):
        for key in value:
            if key not in ignore:
                p = f"{path}.{key}" if path else key
                print_value(gui, p, value[key])
    elif value:
        gui.text(f"{path}: {format_value(value)}")


def format_value(value):
    if isinstance(value, (list, set)):
        value = ", ".join(sorted(value))
    if isinstance(value, str) and len(value) > setting_max_length.get() + 4:
        return f"{value[:setting_max_length.get()]} ..."
    return value


@mod.action_class
class Actions:
    def help_scope_toggle():
        """Toggle help scope gui"""
        if gui.showing:
            ctx.tags = []
            gui.hide()
        else:
            ctx.tags = ["user.help_scope_open"]
            gui.show()


def on_ready():
    actions.user.help_scope_toggle()


app.register("ready", on_ready)
