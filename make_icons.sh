#!/bin/bash

echo "Making icons"
INPUT_DIR="/input"
OUTPUT_DIR="/output"

cd ${OUTPUT_DIR}
for INPUT_FILE in ${INPUT_DIR}/*; do
    echo "Making old_man_yells_at${INPUT_FILE}"
    old-man-yells-at ${INPUT_FILE}
done