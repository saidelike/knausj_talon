#custom vscode commands go here
app: vscode
-

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
# https://github.com/pokey/pokey_talon/blob/45d1071f217417177ef73cba07f2f5653b6f994f/apps/vscode/vscode.talon#L338
# unused yet
git stage all merge:        user.vscode("git.stageAllMerge")

# Display
# override vscode.talon one
wrap (switch|toggle):       user.vscode("editor.action.toggleWordWrap")

# https://github.com/AndreasArvidsson/andreas-talon/blob/4688480bf8ecc36e57cf7f1410c86467245ac115/apps/vscode/vscode.talon#"L252"
snip last:                  user.vscode("jumpToPrevSnippetPlaceholder")
[snip] next:                user.vscode("jumpToNextSnippetPlaceholder")

# enable/disable hats in Cursorless
confetti:                   user.vscode('cursorless.toggleDecorations')

# comment this because it conflicts with the default "debug start" command
# https://www.cursorless.org/docs/contributing/#running--testing-extension-locally
# debug [<user.text>]:
#     user.vscode("workbench.action.debug.selectandstart")
#     insert(user.text or "")

# Sidebar
# https://github.com/pokey/pokey_talon/blob/facefd54a4e14c355b07dde71b1ac2a600785dcd/apps/vscode/vscode.talon#L41C12-L41C12
search next:                user.vscode("search.action.focusNextSearchResult")
search last:                user.vscode("search.action.focusPreviousSearchResult")

# https://github.com/pokey/pokey_talon/blob/7d91683792c363d80db965a4380a311703e065a2/apps/vscode/vscode.talon
panel switch:               user.vscode("workbench.action.togglePanel")
key dog:                    user.vscode("workbench.action.toggleScreencastMode")
doc move right:             user.vscode("workbench.action.moveEditorToRightGroup")
doc move left:              user.vscode("workbench.action.moveEditorToLeftGroup")
give all:                   user.run_rpc_command("removeSecondaryCursors")

doc (max|min):              user.vscode("workbench.action.toggleMaximizeEditorGroup")
