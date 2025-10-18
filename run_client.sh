#!/bin/bash

# default user
userid=0
# Parse options
while getopts ":u:" opt; do
  case $opt in
    u)
      userid=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

if [ "$userid" -eq 0 ]; then
  echo "Starting MultiCraft as Admin..."
  /Applications/MultiCraft.app/Contents/MacOS/MultiCraft \
    --address 127.0.0.1 \
    --port 30000 \
    --name smk \
    --password 1234 --go --quiet

elif [ "$userid" -eq 1 ]; then
  echo "Starting MultiCraft as User..."
  /Applications/MultiCraft.app/Contents/MacOS/MultiCraft \
    --address 127.0.0.1 \
    --port 30000 \
    --name smk_user \
    --password 1234 --go --quiet
fi
