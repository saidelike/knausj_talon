# https://github.com/nriley/talon_community/blob/21cc32a0531e9ec29f02c46a24a9b47372d9c348/apps/apple_terminal/apple_terminal.py#L62
from talon import Context, Module, actions, cron, ui

# TODO: fit this to terminal.py

mod = Module()
ctx = Context()
ctx.matches = r"""
os: windows
app.exe: putty.exe
"""
directories_to_remap = {}
directories_to_exclude = {}


@ctx.action_class("edit")
class EditActions:
    def delete():
        actions.key("ctrl-w")

    def extend_word_left():
        actions.key("ctrl-space alt-b")

    def extend_word_right():
        actions.key("ctrl-space alt-f")

    def delete_line():
        actions.key("ctrl-u")

    def word_left():
        actions.key("alt-b")

    def word_right():
        actions.key("alt-f")

    def line_start():
        actions.key("ctrl-a")

    def line_end():
        actions.key("ctrl-e")

    def page_down():
        actions.key("cmd-pagedown")

    def page_up():
        actions.key("cmd-pageup")

    def undo():
        actions.key("ctrl-_")


@ctx.action_class("user")
class UserActions:
    def file_manager_current_path():
        return ui.active_window().doc or None

    def file_manager_show_properties():
        """Shows the properties for the file"""

    def file_manager_open_directory(path: str):
        """opens the directory that's already visible in the view"""
        actions.insert("cd ")
        path = f'"{path}"'
        actions.insert(path)
        actions.key("enter")

        # jtk - refresh title isn't necessary since the apple terminal does it for us
        # actions.user.file_manager_refresh_title()

    def file_manager_open_parent():
        actions.insert("cd ..")
        actions.key("enter")

    def file_manager_select_directory(path: str):
        """selects the directory"""
        actions.insert(path)

    def file_manager_new_folder(name: str):
        """Creates a new folder in a gui filemanager or inserts the command to do so for terminals"""
        name = f'"{name}"'

        actions.insert("mkdir " + name)

    def file_manager_open_file(path: str):
        """opens the file"""
        actions.insert(path)
        actions.key("enter")

    def file_manager_select_file(path: str):
        """selects the file"""
        actions.insert(path)

    def file_manager_refresh_title():
        return

    # def tab_overview():
    #     actions.key("cmd-shift-\\")
