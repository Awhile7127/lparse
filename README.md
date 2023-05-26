# lparse


## Description

Simple command-line argument parser for Lua.

**This currently adheres to UNIX convention,
supporting `--arg` and `-a` format.**

P.S: Don't use unflagged args because it's bad practice
and makes my job harder! For instance:

```
./src/main.lua 1 2 3
```

*What are 1, 2 and 3?!*


## Usage

In `main.lua`:

```
function main()

    -- `REQUIRE` ACCORDING TO WHERE THE MAIN SCRIPT IS EXECUTED
    local args = require("src.arguments")
    args:new()
    args:add_argument("foo", false)
    args:add_argument("bar", "value")

    -- `ARG` IS THE LUA GLOBAL TABLE FOR ARGUMENTS PASSED TO THE PROGRAM
    local parser = require("src.parser")
    args = parser.parse_arguments(arg, args)

    print(args["foo"])    -- false
    print(args["bar"])    -- value
end
```
