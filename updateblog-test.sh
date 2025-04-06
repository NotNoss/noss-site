#!/bin/bash
set -euo pipefail

# Change to the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Check arguments
if [[ $1 != "about" && $1 != "guides" && $1 != "blog" && $1 != "projects" && $1 != "reviews" ]]; then
  echo "arguments not recognized"
  exit 1
fi

# Set variables for Obsidian to Hugo copy
sourcePath="$HOME/Documents/Docs/Noss-Site/$1/"
destinationPath="$HOME/Projects/noss-site/content/$1/"

# Check for required commands
for cmd in git rsync python3 hugo; do
  if ! command -v $cmd &>/dev/null; then
    echo "$cmd is not installed or not in PATH."
    exit 1
  fi
done

# Step 2: Sync posts from Obsidian to Hugo content folder using rsync
echo "Syncing posts from Obsidian..."

if [ ! -d "$sourcePath" ]; then
  echo "Source path does not exist: $sourcePath"
  exit 1
fi

if [ ! -d "$destinationPath" ]; then
  echo "Destination path does not exist: $destinationPath"
  exit 1
fi

rsync -av --delete "$sourcePath" "$destinationPath"

# Step 3: Process Markdown files with Python script to handle image links
echo "Processing image links in Markdown files..."
if [ ! -f "images.py" ]; then
  echo "Python script images.py not found."
  exit 1
fi

if ! python3 images.py; then
  echo "Failed to process image links."
  exit 1
fi

# Step 4: Build the Hugo site
echo "Building the Hugo site..."
if ! hugo; then
  echo "Hugo build failed."
  exit 1
fi

hugo server -t re-term
