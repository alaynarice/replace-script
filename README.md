# replace-script
## run-test
This is a shell script that creates files that are useful for testing if the python script runs correctly. To run it, you first need to enter the command :`chmod 700 run-test`, then the file can be run with:
- `./replace-script setup` This will create all directories and files with contents necessary.
- `./replace-script teardown` This will create all associated files and directories as initiated above.

## replace
*make sure to install pathlib using `pip install pathlib`*

This is a python script that recursively searches through a directory and replaces all filenames, directory names, and file contents, making use of regular expressions. The python script can be run with:
`python replace path from to`, where: 
- `path` is the path to unchanged directory
- `from` is the initial value you wish to change that the script will search for
- `to` is the desired value you wish to change `from` to
