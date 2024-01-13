app.exe: KeePass.exe
-
# Database
# We can use generic commands for opening/closing it

# Entries
pour this:                  key(ctrl-y)
change this:                key(enter)
clone this:                 key(ctrl-k)
chuck this:                 key(ctrl-d)

# Credentials
copy user [name]:
    key(ctrl-b)
    sleep(200ms)
    user.switch_last_focused()
copy pass [word]:
    key(ctrl-c)
    sleep(200ms)
    user.switch_last_focused()
follow (this | earl | url | link): key(ctrl-u)

# Search
scout:                      key(ctrl-f)
scout <user.text>:
    key(ctrl-f)
    insert("{text}")
    key(enter)
