package = "try-catch-finally"
version = "1.0-0"
source = {
    url = "git://github.com/djfdyuruiry/lua-try-catch-finally.git",
    tag = "v1.0"
}
description = {
        summary = "Pure Lua Implementation of the Try-Catch-Finally Logic used in Modern OO Languages (C++, Java, C# etc.)",
        detailed = [[
            Run a block of code in a traditional try block, with options to chain
            catch and finally handlers as well. mAny errors are passed directly as a single 
            variable to the catch block.

            See: https://github.com/djfdyuruiry/lua-try-catch-finally/blob/master/README.md

            Created by djfdyuruiry: https://github.com/djfdyuruiry
        ]],
        license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["try-catch-finally"] = "try-catch-finally.lua"
    },
    copy_directories = {}
}
