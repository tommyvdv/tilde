#!/bin/bash

#
# We assume tilde/ to be in de home directory
# TODO Investigate https://github.com/janmoesen/tilde/blob/master/install.sh
#

to_symlink=(
    .ackrc
    .bash
    .bashrc
    .bash_profile
    .gitconfig
    .inputrc
);

pushd `pwd`
cd
for fn in "${to_symlink[@]}"; do
    ln -s "tilde/$fn"
done
popd

