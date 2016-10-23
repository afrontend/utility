#!/usr/bin/env bash
# Filename: Pick.sh
command -v pick >/dev/null 2>&1 || { echo >&2 "I require pick but it's not installed.  Aborting."; exit 1; }
trap 'echo you hit Ctrl-C/Ctrl-\, now exiting..; exit' SIGINT SIGQUIT
TMP_SCRIPT_NAME=$(mktemp)

function _runScript() {
    sed "s/^/$1 /" | pick > $TMP_SCRIPT_NAME
    cat $TMP_SCRIPT_NAME
    chmod u+x $TMP_SCRIPT_NAME
    $TMP_SCRIPT_NAME
}

me=`basename $0`
case $1 in
    '')
        _runScript cat
        ;;
    '-h')
        echo "ls -1 | $me cat"
        ;;
    *)
        _runScript $1
        ;;
esac
