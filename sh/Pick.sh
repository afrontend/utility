#!/usr/bin/env bash
# Filename: Pick.sh
command -v pick >/dev/null 2>&1 || { echo >&2 "I require pick but it's not installed.  Aborting."; exit 1; }
trap 'echo you hit Ctrl-C/Ctrl-\, now exiting..; exit' SIGINT SIGQUIT
TMP_SCRIPT_NAME=$(mktemp)

sed "s/^/$* /" | pick > $TMP_SCRIPT_NAME
cat $TMP_SCRIPT_NAME
chmod u+x $TMP_SCRIPT_NAME
$TMP_SCRIPT_NAME
