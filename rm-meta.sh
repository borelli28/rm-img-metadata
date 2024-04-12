#!/bin/bash

# Check if ExifTool is installed
if ! command -v exiftool &> /dev/null
then
    echo "ExifTool could not be found. Please install ExifTool using Homebrew."
    exit 1
fi

# Check if a filename is provided as an argument
if [ -z "$1" ]
then
    echo "Please provide a filename as an argument."
    exit 1
fi


echo "Removing metadata from $1..."
exiftool -all= "$1"


echo "Remaining metadata:"
exiftool "$1"