#!/bin/bash

set -a

# Full path of the repository (defaults to the grandparent directory of this file)
repo_dir=${repo_dir:-"$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"}
# Path from $repo_dir to dir containing hygiene scripts
hygiene_dir=${hygiene_dir:-"${repo_dir}/.hygiene"}

# Directory name of the repository (defaults to $repo_dir name)
ONTPUB_FAMILY=${ONTPUB_FAMILY:-"${repo_dir##*/}"}
# Path to the repository's parent directory (defaults to the parent of $repo_dir)
HYGIENE_WORKSPACE=${HYGIENE_WORKSPACE:-"$(cd "${repo_dir}" && cd .. && pwd)"}

# Relative path to the test directory
HYGIENE_TEST_SUBDIR="$hygiene_dir/tests"

# Relative path to ontolgy sources
ONTPUB_SUBDIR=ontology
# If set, ontology files with paths that partially match this var will be excluded from checking
ONTPUB_EXCLUDED=

set +a
