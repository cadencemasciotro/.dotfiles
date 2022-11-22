#!/bin/bash
#shebang
rm -rf .vimrc #removes .vimrc file
sed '118d' ~/.bashrc #replaces line with nothing--could not figure out how to use sed the other way
rm -rf .TRASH #removes .TRASH directory
