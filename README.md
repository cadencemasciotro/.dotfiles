Within the repository are two directories (bin,etc) and one Makefile
bin: contains two scripts
./bin/linux.sh: Checks user operating system type is linux-- if not, dumps an error to linuxsetup.log file. .vimrc file (if it exists) is renamed to .bupvimrc and confirmation message is directed to linuxsetup.log. Contents of vimrc file and redirected to .vimrc file in home directory. Statement ‘source ∼/.dotfiles/etc/bashrc custom’ is appended  to .bashrc file.
./bin/cleanup.sh: reverses everything done in ./bin/linux.sh script using rm commands

etc: contains two configuration files (vimrc, bashrc _ custom)
./etc/bashrc _ custom: sets following aliases
-cdd="cd .."
-lsa="ls -A"
-lsl="ls -l"
-lsal="ls -Al"
-targz=targzfunc
-untar=untarfunc
./etc/vimrc:configures the vim text editor. Sets number lines, autoindents, sets ruler, sets color scheme to elflord, and edits format

Makefile: has two targets
linux (default target): runs clean target as prerequisite. Then runs linux.sh script
clean: runs cleanup.sh scipt
