#!/usr/bin/awk -f
BEGIN {
    base     = "h"

    filename = "artists"
    path     = "${XDG_DATA_HOME:-$HOME/.local/share}" "/" base
    data     = path "/" filename

    read(data)
}

function read(data) {
    cmd = "cat" " " data
    while (cmd | getline line)
        # TODO: parse the line
    close(cmd)
}
