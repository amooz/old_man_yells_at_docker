#!/bin/sh

echo "Making icons"
INPUT_DIR="/input"
OUTPUT_DIR="/output"

cd ${OUTPUT_DIR}
for INPUT_FILE in ${INPUT_DIR}/*; do
    old-man-yells-at ${INPUT_FILE}
done