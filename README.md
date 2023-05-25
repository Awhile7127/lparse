# lparse


## Description

Simple command-line argument parser for Lua.

**This does not currently adhere to UNIX convention,
supporting only `--arg` format.**


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
