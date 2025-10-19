#!/bin/bash

# Loop through all patch files in .patches
for patch in .patches/*.patch; do
  # Extract submodule name from patch filename if needed
  # For simplicity, assume patches are named after submodules, e.g., a.patch, b.patch
  submodule_name=$(basename "$patch" .patch)

  # Navigate to submodule directory
  cd "$submodule_name" || continue

  # Apply patch
  git apply "../../.patches/$submodule_name.patch"

  # Return to root directory
  cd -
done
