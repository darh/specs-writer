#!/bin/bash

# This script copies software design or requirements templates
# from the lib/templates/ directory into src/


set -e

# Read arguments -- expecting one that is either "design" or "requirements"
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [outline|blueprint]"
    exit 1
fi


TEMPLATE_DIR="lib/templates"
TARGET_DIR="out"

TYPE="$1"

case "$TYPE" in
    outline)
        TEMPLATE="$TEMPLATE_DIR/outline.md"
        ;;

    blueprint)
        TEMPLATE="$TEMPLATE_DIR/blueprint.md"
        ;;
    *)
        echo "Error: Invalid type '$TYPE'. Expected 'outline'."
        exit 1
        ;;
esac


# Check if target directory exists and is non-empty
if [ -d "$TARGET_DIR" ] && [ "$(ls -A $TARGET_DIR/* 2>/dev/null | wc -l)" -gt 0 ]; then
    echo "'$TARGET_DIR' directory already exists and contains files. No changes made."
    exit 0
fi

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR" 

# Copy .adoc files from template to target directory
cp "$TEMPLATE" "$TARGET_DIR/"
echo "Copied '$TEMPLATE' to '$TARGET_DIR'."

exit 0