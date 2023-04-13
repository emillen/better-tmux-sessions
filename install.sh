#!/usr/bin/env bash

for file in $(find . -name '*.sh' -type f); do
    if [[ $file == *"install"* ]]; then
        continue
    fi

    echo "Installing $file"

    name=$(basename $file .sh)

    cp $PWD/$file $HOME/.local/bin/${name}
done
