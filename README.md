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
* Clone the Kitodo.Presentation, SLUB Digital Collections, and DFG-Viewer extension into the extension directory (optional)
    ```bash
    git clone https://github.com/kitodo/kitodo-presentation ./extensions
    git clone https://github.com/slub/slub_digitalcollections ./extensions
    git clone https://github.com/slub/dfg-viewer ./extensions
    ```
    *You can also use an existing directory where the extensions are already located. To do this, you just need to adjust the path to the directory in the `.ddev/docker-compose.mounts.yml` file under the respective TYPO3 version by replacing the existing path `../../../extensions`.*
    
## Getting started

#### TYPO3 12

Navigate to folder `./typo3/12/` and run `ddev install`.

Frontend is provided under url https://dfg-viewer-typo3-12.ddev.site and backend under https://dfg-viewer-typo3-12.ddev.site/typo3/ with user `admin` and password `dvAdmin.1`.

#### TYPO3 11

Navigate to folder `./typo3/11/` and run `ddev install`.

Frontend is provided under url https://dfg-viewer-typo3-11.ddev.site and backend under https://dfg-viewer-typo3-11.ddev.site/typo3/ with user `admin` and password `dvAdmin.1`.

*Due to the stricter password requirements as of TYPO3 12, the general password has changed. The username and password can be customized under `.ddev/config.yaml`*

### DDEV commands

#### Start DDEV project containers

```bash
ddev start
```

#### Install TYPO3 and dependencies

```bash
ddev install
```
What happens in this command?
- Create a Composer file for the TYPO3 distribution and install dependencies
- Update the Composer configuration for the DFG-Viewer development environment
- Install a suitable TYPO3 version
- Update the folder structure
- Install DFG-Viewer dependencies from the mounted extension directory
- Apply necessary extension setups, e.g., database changes or adding site configuration
- Configure extensions

#### Stops DDEV project containers

```bash
ddev stop
```

#### Delete DDEV project containers and project specific files and folders

```bash
ddev reset
```

## Maintainer

If you have any questions or encounter any problems, please do not hesitate to contact us.

- [Markus Weigelt](https://github.com/markusweigelt)
