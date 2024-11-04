# DDEV for DFG-Viewer

This DDEV system installs DFG Main based solely on its distribution package.

A more comprehensive DDEV system based on database dumps is available at https://github.com/slub/ddev-dfgviewer.

## Prerequisites

* Install DDEV https://ddev.readthedocs.io/en/stable/users/install/ddev-installation/
* Clone the repository

    ```bash
    git clone https://github.com/slub/ddev-dfgviewer
    cd ./ddev-dfgviewer
    ```

## Getting started

### TYPO3

#### 12

Navigate to folder `./typo3/12/` and run [DDEV commands](#ddev-commands).

Frontend is provided under url https://dfg-viewer-typo3-12.ddev.site and backend under https://dfg-viewer-typo3-12.ddev.site/typo3/ with user `admin` and `dvAdmin.1`.

#### 11

Navigate to folder `./typo3/11/` and run [DDEV commands](#ddev-commands).

Frontend is provided under url https://dfg-viewer-typo3-12.ddev.site and backend under https://dfg-viewer-typo3-12.ddev.site/typo3/ with user `admin` and `dvAdmin.1`.

*Due to the stricter password requirements as of TYPO3 12, the general password has changed. The username and password can be customized under `.ddev/config.yaml`*

### DDEV commands

Start DDEV project containers.

```bash
ddev start
```

Setup installs all necessary Composer packages. TYPO3 CLI installation routine is running and some configurations are carried out.

```bash
ddev setup
```

Stops DDEV project containers.

```bash
ddev stop
```

Delete DDEV project containers.

```bash
ddev delete
```
*Project specific files and folders e.g. `composer.lock`, `config`, `public`, `var` and `vendor` must be deleted manually.*

```bash
rm -rf composer.lock config public var vendor
```

## Extensions


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
