# DDEV System for DFG-Viewer

This DDEV system installs DFG Main based solely on its distribution package.

A more comprehensive DDEV system based on database dumps is available at https://github.com/slub/ddev-dfgviewer.

## Getting Started

```bash
git clone https://github.com/slub/ddev-dfgviewer.git
cd ./ddev-dfgviewer
```
* create and start the DDEV project
* install all dependencies including TYPO3, Kitodo.Presentation and DFG-Viewer
* import the database

ddev start
ddev check-install

ddev launch /viewer/?tx_dlf%5Bid%5D=https%3A%2F%2Fdigital.slub-dresden.de%2Foai%2F%3Fverb%3DGetRecord%26metadataPrefix%3Dmets%26identifier%3Doai%3Ade%3Aslub-dresden%3Adb%3Aid-263566811
ddev launch /viewer/?tx_dlf%5Bid%5D=https%3A%2F%2Fdigital.slub-dresden.de%2Foai%2F%3Fverb%3DGetRecord%26metadataPrefix%3Dmets%26identifier%3Doai%3Ade%3Aslub-dresden%3Adb%3Aid-1666480371
#ddev launch /viewer/?tx_dlf%5Bid%5D=https%3A%2F%2Fdigital.slub-dresden.de%2Fdata%2Fkitodo%2FTheDarea_416971482-19100223%2FTheDarea_416971482-19100223_mets.xml
```

## Other Commands

```bash
# Start over
ddev reset
```

## URLs

- Backend Login: https://dfgviewer-dist.ddev.site/typo3/
    - User: `admin`
    - Password: `adminslub`

With `ddev launch -p` you launch the PHPMyAdmin to access the TYPO3 database.

## Maintainer

If you have any questions or encounter any problems, please do not hesitate to contact us.

- [Markus Weigelt](https://github.com/markusweigelt)


Typo3 11

adjust extension paths or add extension to directory

ddev start

--
Welcome to the TYPO3 Console installer!

✔ Prepare installation
✔ Check environment and create folders
➤ Set up database connection
TCP Port of database server (default: "3306"):
Unix Socket to connect to (default: ""):
✔ Ok
➤ Select database
Use already existing database? (y/N): y
✔ Ok
➤ Set up database
✔
✔ Set up configuration
✔ Set up web server configuration
✔ Set up extensions
--

ddev stop

ddev start
