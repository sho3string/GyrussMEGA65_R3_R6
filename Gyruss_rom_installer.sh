#!/bin/bash

WorkingDirectory=$(pwd)
length=71

clear
echo " .--------------------."
echo " |Building Gyruss ROMs|"
echo " '--------------------'"

mkdir -p "$WorkingDirectory/arcade/gyruss"

echo "Copying Gyruss ROMs"
# Copy ROM files to the target directory
files=(
    "gyrussk.1" "gyrussk.2" "gyrussk.3" "gyrussk.9"
    "gyrussk.4" "gyrussk.5" "gyrussk.6" "gyrussk.7" "gyrussk.8"
    "gyrussk.1a" "gyrussk.2a" "gyrussk.3a"
    "gyrussk.pr1" "gyrussk.pr2" "gyrussk.pr3"
)

for file in "${files[@]}"; do
    cp "$WorkingDirectory/$file" "$WorkingDirectory/arcade/gyruss/$file"
done

# Concatenating specific ROM files
outputFile="$WorkingDirectory/arcade/gyruss/gyrussk2.pr3"
cat "$WorkingDirectory/gyrussk.pr3" "$WorkingDirectory/gyrussk.pr3" \
    "$WorkingDirectory/gyrussk.pr3" "$WorkingDirectory/gyrussk.pr3" \
    "$WorkingDirectory/gyrussk.pr3" "$WorkingDirectory/gyrussk.pr3" \
    "$WorkingDirectory/gyrussk.pr3" "$WorkingDirectory/gyrussk.pr3" > "$outputFile"

echo "Generating blank config file"
output_file="$WorkingDirectory/arcade/gyruss/gyrcfg"
dd if=/dev/zero bs=1 count=$length | tr '\000' '\377' > "$output_file"

echo "All done!"