# places-purge
This is a bash script that creates a skeleton backup of the Firefox browser bookmarks and history. The script first finds the location of the "places.sqlite" file where Firefox stores its browsing history, bookmarks, and other information. It then checks whether Firefox is currently running and if so, stops the program.

Next, the script uses the "sqlite3" command-line tool to remove the contents of the "places.sqlite" file, effectively creating a blank slate for the next time Firefox is launched. Specifically, the script deletes all records from several tables in the "places.sqlite" database, including the "moz_historyvisits", "moz_inputhistory", "moz_bookmarks", "moz_bookmarks_roots", "moz_keywords", and "moz_places" tables.

The resulting "places.sqlite" file can be used as a starting point for creating a backup of Firefox bookmarks and history, as it will not contain any sensitive user data.
