#!/bin/bash

# Check if exactly two arguments are given (function name and file path)
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <function-name> <file-path>"
  echo "Note: File is relative to project root and not where you currently are."
  exit 1
fi

FUNCTION_NAME=$1
FILE_PATH=$2

# Print the current directory
echo "Current directory: $(pwd)"

# Check if the specified file exists
if [ ! -f "$FILE_PATH" ]; then
  echo "File not found: $FILE_PATH"
  exit 1
fi

# Print the full file path
echo "Full file path: $FILE_PATH"

# Use git log to list commits that modified the function, within the found file
git log -L :$FUNCTION_NAME:"$FILE_PATH"