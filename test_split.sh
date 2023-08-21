#!/bin/bash

# Input string with spaces and lines
LABELS="This release-12 release-14 s a sample
string with spaces."

# Initialize an empty array to store the split parts
release_labels=()

# Use a while loop to split the LABELS
while IFS=" " read -r -a labels; do
    for label in "${labels[@]}"; do
        if [[ $label == release* ]]; then
            release_labels+=("$label")
        fi
    done
done <<< "$LABELS"

# Print the split parts
for release_label in "${release_labels[@]}"; do
    echo "$release_label"
done
