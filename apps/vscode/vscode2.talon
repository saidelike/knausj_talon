
#custom vscode commands go here
app: vscode
-

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
# https://github.com/pokey/pokey_talon/blob/45d1071f217417177ef73cba07f2f5653b6f994f/apps/vscode/vscode.talon#L338
# unused yet
git stage all merge: user.vscode("git.stageAllMerge")

# Display
# override vscode.talon one
wrap (switch|toggle):       user.vscode("editor.action.toggleWordWrap")
