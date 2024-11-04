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

Frontend is provided under url https://dfg-viewer-typo3-12.ddev.site and backend under https://dfg-viewer-typo3-12.ddev.site/typo3/ with user `admin` and password `dvAdmin.1`.

#### 11

Navigate to folder `./typo3/11/` and run [DDEV commands](#ddev-commands).

Frontend is provided under url https://dfg-viewer-typo3-12.ddev.site and backend under https://dfg-viewer-typo3-12.ddev.site/typo3/ with user `admin` and password `dvAdmin.1`.

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

Delete DDEV project containers and project specific files and folders.

```bash
ddev reset
```

## Extensions



## Maintainer

If you have any questions or encounter any problems, please do not hesitate to contact us.

- [Markus Weigelt](https://github.com/markusweigelt)
