#!/bin/bash

# Find the path to the places.sqlite file
PLACES_DB=$(find ~/.mozilla/firefox -name places.sqlite -print -quit)

# Stop Firefox if it's running
pgrep firefox >/dev/null 2>&1 && firefox --quit >/dev/null 2>&1

# Define the tables to delete, including sqlite_sequence
tables=("moz_historyvisits" "moz_inputhistory" "moz_bookmarks" "moz_bookmarks_roots" "moz_keywords" "moz_places" "moz_anno_attributes" "moz_annos" "moz_items_annos" "moz_meta" "moz_origins" "moz_sync" "sqlite_sequence")

echo "Removing contents of places.sqlite"
for table in "${tables[@]}"; do
    sqlite3 "$PLACES_DB" "DELETE FROM $table;"
done

echo "Done!"
