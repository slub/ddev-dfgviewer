# DDEV System for DFG-Viewer

This DDEV system installs DFG Main based solely on its distribution package.

A more comprehensive DDEV system based on database dumps is available at https://github.com/slub/ddev-dfgviewer.

## Getting Started

```bash
git clone https://github.com/slub/ddev-dfgviewer.git
cd ./ddev-dfgviewer

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

