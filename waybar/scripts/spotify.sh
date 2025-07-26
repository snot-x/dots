#!/bin/bash

# Check if spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    echo '{"text": " No music", "class": "spotify-off", "tooltip": "Spotify not running"}'
    exit 0
fi

# Get metadata
ARTIST=$(playerctl -p spotify metadata artist 2>/dev/null)
TITLE=$(playerctl -p spotify metadata title 2>/dev/null)
STATUS=$(playerctl -p spotify status 2>/dev/null)

# Check if we got data
if [[ -z "$ARTIST" || -z "$TITLE" ]]; then
    echo '{"text": " Idle", "class": "spotify-idle", "tooltip": "Spotify idle"}'
    exit 0
fi

# Set icon based on status
if [[ "$STATUS" == "Playing" ]]; then
    ICON=""
else
    ICON=""
fi

# Format output
echo "{\"text\": \"$ICON $ARTIST - $TITLE\", \"class\": \"spotify-$STATUS\", \"tooltip\": \"$ARTIST - $TITLE\"}"

