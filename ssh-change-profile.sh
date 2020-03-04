#!/usr/bin/env bash

# reference https://dev.classmethod.jp/tool/iterm2-ssh-change-profile/

clear

# set profile
echo -ne "\033]1337;SetProfile=$@\a"

# ssh login
/usr/bin/ssh "$@"

# set profile(default)
echo -ne "\033]1337;SetProfile=Default\a"

echo "echo from ssh-change-profile.sh"