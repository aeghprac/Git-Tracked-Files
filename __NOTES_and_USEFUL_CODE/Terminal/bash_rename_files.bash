#!/bin/bash
# Navigate to the directory with your files
cd /path/to/your/folder

# Use a for loop to iterate over files with "DC_" at the beginning of their names
for file in DC_*; do
    newname="${file#DC_}"  # Remove "DC_" from the beginning of the filename
    mv "$file" "$newname"   # Rename the file
done
