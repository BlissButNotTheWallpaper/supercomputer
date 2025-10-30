#!/bin/bash
tmux new-window "bash -i -c 'DIR=\$(fdfind . "$HOME" --type directory --hidden --max-depth 3 --exclude '**.BurpSuite' --exclude '**.ansible' --exclude '**.bbot' --exclude '**/.cache' --exclude '**/.mozilla' --exclude '**.nxc' --exclude '**.msf4' --exclude '**autostart' --exclude '**.java' --exclude '**.vscode-oss' --exclude '**VSCodium' | fzf --height 50%); [ -n \"\$DIR\" ] && cd \"\$DIR\" && exec bash'"

