#!/bin/bash
pushd /Users/jri/Documents/matlab/matlab/library/contrib/fieldtrip/fieldtrip
ln -s ./private/ ./privateMirror
cd fileio/
ln -s ./private/ ./privateMirror
cd ../forward/
ln -s ./private/ ./privateMirror
cd ../inverse/
ln -s ./private/ ./privateMirror
cd ../plotting/
ln -s ./private/ ./privateMirror
cd ../preproc/
ln -s ./private/ ./privateMirror
cd ../statfun/
ln -s ./private/ ./privateMirror
cd ../utilities/
ln -s ./private/ ./privateMirror
popd
