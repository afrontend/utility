#!/usr/bin/env bash
#Filename: Tree.sh
command -v tree >/dev/null 2>&1 || { echo >&2 "I require tree but it's not installed. Aborting."; exit 1; }
command -v iconv >/dev/null 2>&1 || { echo >&2 "I require iconv but it's not installed. Aborting."; exit 1; }
command -v readlink >/dev/null 2>&1 || { echo >&2 "I require readlink but it's not installed. Aborting."; exit 1; }
command -v xdg-open >/dev/null 2>&1 || { echo >&2 "I require xdg-open but it's not installed. Aborting."; exit 1; }
trap 'echo you hit Ctrl-C/Ctrl-\, now exiting..; exit' SIGINT SIGQUIT
tempHtmlTreeFile="/tmp/temp$(basename "$0").$$.html"
htmlTreeFile="/tmp/$(basename "$0").$$.html"

function htmlTree() {
    if [ -z "$1" ]; then
        tree -I 'node_modules|bower_components' -H file://"$(readlink -f .)" > "$tempHtmlTreeFile"
    else
        #echo "$1"
        tree -I 'node_modules|bower_components' -P "*.$1" -H file://"$(readlink -f .)" > "$tempHtmlTreeFile"
    fi
    iconv -t utf8 "$tempHtmlTreeFile" > "$htmlTreeFile"
    xdg-open "$htmlTreeFile" 2> /dev/null
}

htmlTree "$1"
