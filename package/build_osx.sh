#!/bin/bash
set -ev
if [ z"$FILENAME" = "z" ]; then
    echo "Error:  Environment variable FILENAME is not set"
    exit 1
fi
pyinstaller manuskript-macos.spec --clean
cd dist && zip $FILENAME -r Manuskript.app && cd ..
ls dist
cp dist/$FILENAME dist/manuskript-osx-develop.zip
