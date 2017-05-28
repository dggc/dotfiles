#! /bin/bash
set -e

TARGET=$HOME

function install {
    STOW_DIR=$1
    PROGRAM=$2
    if [ -e "${STOW_DIR}/$PROGRAM" ]; then
        echo stow -t ${HOME} -d $STOW_DIR $PROGRAM
        stow -t ${HOME} -d $STOW_DIR $PROGRAM
    else
        echo -e "Configuration for ${STOW_DIR}/$PROGRAM not found. Skipping"
    fi
}

for d in $(ls -d */); do
    for f in $(ls -d $d*/ | cut -f2 -d'/'); do
       install ${d%%/} ${f%%/}
    done
done
