#!/bin/bash

# Check if exactly two arguments are given (function name and partial file name)
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <function-name> <partial-file-name>"
  exit 1
fi

FUNCTION_NAME=$1
PARTIAL_FILE_NAME=$2

# Find the full path of the file that matches the partial file name within the Git repository
# Assumes the current directory is within the Git repository
FULL_FILE_PATH=$(find . -type f -name "*$PARTIAL_FILE_NAME*" | head -n 1)

if [ -z "$FULL_FILE_PATH" ]; then
  echo "File not found: $PARTIAL_FILE_NAME"
  exit 1
fi

# Use git log to list commits that modified the function, within the found file
git log -L :$FUNCTION_NAME:$FULL_FILE_PATH

