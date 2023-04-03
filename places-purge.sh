#!/bin/bash

# Find the path to the places.sqlite file
PLACES_DB=$(find ~/.mozilla/firefox -name places.sqlite -print -quit)

# Stop Firefox if it's running
pgrep firefox >/dev/null 2>&1 && firefox --quit >/dev/null 2>&1

# Remove the contents of the places.sqlite file
echo "Removing contents of places.sqlite"
for table in moz_historyvisits moz_inputhistory moz_bookmarks moz_bookmarks_roots moz_keywords moz_places; do
    sqlite3 "$PLACES_DB" "DELETE FROM $table;"
done

echo "Done!"
