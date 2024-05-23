# DDEV System for DFG Viewer

This DDEV system installs DFG Viewer based solely on its distribution package.

A more comprehensive DDEV system based on database dumps is available at https://github.com/slub/ddev-dfgviewer.

## Getting Started

```bash
git clone https://github.com/slub/ddev-dfgviewer.git
cd ./ddev-dfgviewer

ddev start
ddev check-install
#https://digital.slub-dresden.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=oai:de:slub-dresden:db:id-1666480371
ddev launch '/viewer?tx_dlf[id]=https://digital.slub-dresden.de/data/kitodo/TheDarea_416971482-19100223/TheDarea_416971482-19100223_mets.xml'
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

