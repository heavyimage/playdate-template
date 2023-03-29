#!/bin/bash
build=$PWD"/builds"
source=$PWD"/source"
name=${PWD##*/}
pdx=${build}"/"${name}".pdx"

# Create build folder if not present
echo "Building"
mkdir -p ./builds
rm -rf ./builds/*
pdc -sdkpath "$PLAYDATE_SDK_PATH" "$source" "$pdx"

# Close Simulator
sim="$( pidof PlaydateSimulator )"
echo $sim
if [[ -n ${sim} ]]
then
    echo "Stopping"
    kill -9 $sim
else
    echo "Not Running"
fi

# Run (Simulator)
PlaydateSimulator "$pdx"&
