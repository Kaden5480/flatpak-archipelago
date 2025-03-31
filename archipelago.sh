#!/usr/bin/env bash

show_help() {
    printf "Usage: $(basename $0) <generate|launcher|server>\n"
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

cd /app/Archipelago

case "$1" in
    "generate")
        ./ArchipelagoGenerate "${@:2}"
        ;;
    "launcher")
        ./ArchipelagoLauncher "${@:2}"
        ;;
    "server")
        ./ArchipelagoServer "${@:2}"
        ;;
    *)
        printf "Unknown option: $1\n"
        show_help
        exit 1
        ;;
esac
