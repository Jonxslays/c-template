# C-template

A basic C project template for *unix systems.

## Getting started

- Clone this repo, and set up you project

```bash
$ git clone https://github.com/Jonxslays/c-template.git
$ cd c-template

# Remove the link to this repo
$ rm -rf .git

# Initialize your own repo
$ git init

# Rename the project folder
$ cd .. && \
    mv c-template cool-project-name && \
    cd cool-project-name

# You're ready to go!
# Probably edit this README :)
```

## Building the project

---

`make init`

Creates the `bin` and `obj` directories to house the final executable and object files.
You should only have to run this command once.

> Edit `BIN` and `OBJ` in the makefile to alter the directories created by this command.

---

`make`

Compiles all the `.c` files in `src` to `.o` files in `obj` and then
builds the executable at `bin/main`.

> Edit `TARGET` in the makefile to alter the final executables name.

> Edit `SRC` in the makefile to alter the source directory.

---

`make run`

Runs the target executable. Errors if it has not been compiled yet.

---

`make clean`

Deletes all files located in the `BIN` and `OBJ` directories.

---

`make all`

Runs `make clean`, `make` and `make run` in succession.

---

## License

This C-template is licensed under the
[Creative Commons](https://github.com/Jonxslays/c-template/blob/master/LICENSE) License.
