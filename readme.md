# modset for adventure time server

## Setup

```bash
git clone --recursive <repository_url>
```

## Usage

```bash
# add a new mod
git submodule add <mod_repository_url>

# update a mod
git submodule update --remote <mod_name>

# update all mods
git submodule update --init --recursive

# remove a mod
git submodule deinit -f <mod_name>
git rm -f <mod_name>
```
