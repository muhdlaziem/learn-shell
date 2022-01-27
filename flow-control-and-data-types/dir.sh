#!/bin/bash

src_loc=/home/muhdlaziem/workspace/learn-shell/flow-control-and-data-types
data_loc=/home/muhdlaziem/workspace/learn-shell/datafiles
echo "${DIRSTACK[*]}"
echo
pushd "$src_loc" || exit
echo
pushd "$data_loc" || exit
echo
echo "${DIRSTACK[*]}"
echo
popd || exit
popd || exit
