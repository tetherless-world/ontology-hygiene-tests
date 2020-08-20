#!/bin/bash

set -a

# Full path of the repository (defaults to the grandparent directory of this file)
REPO_DIR=${REPO_DIR:-"$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"}
# Path from $REPO_DIR to dir containing hygiene scripts
HYGIENE_DIR=${HYGIENE_DIR:-"${REPO_DIR}/.hygiene"}

# Path to directory where container output will be copied.
OUTPUT_DIR=${OUTPUT_DIR:-"/output"}

# Directory name of the repository (defaults to $REPO_DIR name)
ONTPUB_FAMILY=${ONTPUB_FAMILY:-"${REPO_DIR##*/}"}
# Path to the repository's parent directory (defaults to the parent of $REPO_DIR)
HYGIENE_WORKSPACE=${HYGIENE_WORKSPACE:-"$(cd "${REPO_DIR}" && cd .. && pwd)"}

# Relative path to the test directory
HYGIENE_TEST_SUBDIR=".hygiene/tests"

# Relative path to ontolgy sources
ONTPUB_SUBDIR=ontology
# If set, ontology files with paths that partially match this var will be excluded from checking
ONTPUB_EXCLUDED=

set +a
