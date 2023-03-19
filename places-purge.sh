#!/bin/bash

# Find the path to the places.sqlite file
PLACES_DB=$(find ~/.mozilla/firefox -name places.sqlite -print -quit)

# Stop Firefox if it's running
if pgrep firefox >/dev/null 2>&1; then
    echo "Stopping Firefox"
    firefox --quit >/dev/null 2>&1
fi

# Remove the contents of the places.sqlite file
echo "Removing contents of places.sqlite"
sqlite3 "$PLACES_DB" "DELETE FROM moz_historyvisits;"
sqlite3 "$PLACES_DB" "DELETE FROM moz_inputhistory;"
sqlite3 "$PLACES_DB" "DELETE FROM moz_bookmarks;"
sqlite3 "$PLACES_DB" "DELETE FROM moz_bookmarks_roots;"
sqlite3 "$PLACES_DB" "DELETE FROM moz_keywords;"
sqlite3 "$PLACES_DB" "DELETE FROM moz_places;"

echo "Done!"
