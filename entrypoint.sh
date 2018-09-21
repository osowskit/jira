#!/usr/bin/env sh

COMMAND="$@ --login=$USERNAME --endpoint=$HOST"
echo "$COMMAND"
eval jira "$COMMAND"
