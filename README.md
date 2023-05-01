# places-purge
This is a bash script that facilitates creation of a skeleton backup of the Firefox browser configuration.

## What it does and how it works:
* The script first finds the location of the `places.sqlite` file where Firefox stores its browsing history, bookmarks, and other information. It then checks whether Firefox is currently running and if so, stops the program.
* Next, the script uses the `sqlite3` command-line tool to remove the contents of the `places.sqlite` file, effectively creating a blank slate for the next time Firefox is launched and can be used as a starting point for creating a backup of Firefox configuration, as it will not contain any sensitive user data.

The following will be left in the places.sqlite file:

* The database structure itself, including the table schemas and indexes.
* Empty tables: All the tables in the places database, including moz_historyvisits, moz_inputhistory, moz_bookmarks, moz_bookmarks_roots, moz_keywords, moz_places, moz_anno_attributes, moz_annos, moz_items_annos, moz_meta, moz_origins, moz_sync, and sqlite_sequence, will still exist but will be empty.

Essentially, the script will remove all the data within the tables but leave the tables and database structure intact. This means that the places.sqlite file will still have the necessary components for Firefox to function properly, but it will no longer contain any specific browsing history, bookmarks, or other related data.

It's important to note that while the script removes the data from the tables, it does not guarantee complete erasure of the data from the physical storage of the places.sqlite file. If you have concerns about data privacy or security, you may consider additional steps or utilities to securely wipe the file or utilize Firefox's built-in data-clearing options.

## Some limitations of this script include:
* It only clears the Firefox history, bookmarks, and related data from the `places.sqlite` file, and does not address any other data or settings that a user may want to backup.
* The script assumes that Firefox is installed in the default location `~/.mozilla/firefox`, so it may not work if Firefox is installed in a different directory.
* The script does not make a backup of the Firefox data and does not prompt the user for confirmation before deleting. If the script is run accidentally, it may lead to data loss.

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files released under the [MIT License](LICENSE).
