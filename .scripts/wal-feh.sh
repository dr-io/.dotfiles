#!/bin/bash
    #sleep 0.2
    wal -n -t -i "$@"
    feh --bg-max "$(< "${HOME}/.cache/wal/wal")"
