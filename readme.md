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
## Patching mods

There are two ways to create patch, `diff` and `patch` command. Difference is `patch` work on specific commits.

```bash
# creating a patch
git diff > .patches/beowulf.patch

# creating a patch with a commit id (not preferred by me)
git format-patch -1 <commit_hash>

# patch file should be present in beowulf.patch

# now to patch beowulf
cd beowulf
git apply .patches/beowulf

# to patch all mods use the script in root dir
./patch_all
```
