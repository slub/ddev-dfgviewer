# ddev-dfgviewer

DDEV Development System for the DFG-Viewer

## Start the Project

Just execute the `./start-basic.sh` script to

* create and start the DDEV project
* install all dependancies including TYPO3, Kitodo.Presentation and DFG-Viewer
* import the database
* update/download language packs (particularly for News extension)

## Usage

### TYPO3 Login

Login to TYPO3-Backend is possible at https://ddev-dfgviewer.ddev.site/typo3/

* Login: `admin`
* Password: `adminslub`

### PHPMyAdmin

With `ddev launch -p` you launch the PHPMyAdmin to access the TYPO3 database.

### DDEV Commands

```bash
# Import database dump.
ddev db:import [<file.sql>]

# Cleanup database, delete sessions
ddev db:cleanup

# Export database dump
ddev db:export [<file.sql>]

# Cleanup and export
ddev db:precommit [<file.sql>]
```
