# places-purge
This is a bash script that facilitates creation of a skeleton backup of the Firefox browser configuration. The script first finds the location of the "places.sqlite" file where Firefox stores its browsing history, bookmarks, and other information. It then checks whether Firefox is currently running and if so, stops the program.

Next, the script uses the "sqlite3" command-line tool to remove the contents of the "places.sqlite" file, effectively creating a blank slate for the next time Firefox is launched. Specifically, the script deletes all records from several tables in the "places.sqlite" database, including the "moz_historyvisits", "moz_inputhistory", "moz_bookmarks", "moz_bookmarks_roots", "moz_keywords", and "moz_places" tables.

The resulting "places.sqlite" file can be used as a starting point for creating a backup of Firefox bookmarks and history, as it will not contain any sensitive user data.

# Some limitations of this script include:

* It only clears the Firefox history, bookmarks, and related data from the places.sqlite file, and does not address any other data or settings that a user may want to backup.
* The script assumes that Firefox is installed in the default location (~/.mozilla/firefox), so it may not work if Firefox is installed in a different directory.
* The script does not prompt the user for confirmation before deleting the Firefox data, so if the script is run accidentally, it may lead to data loss.
* The script does not make a backup of the deleted data, so if the user wants to restore the data later, they may need to rely on a previously created backup.
