# lua-try-catch-finally
Pure Lua Implementation of the Try-Catch-Finally Logic used in Modern OO Languages (C++, Java, C# etc.)

----

## Install

Use luarocks to install this module, see https://luarocks.org/#quick-start

```shell
luarocks install try-catch-finally
```

[luarocks module](https://luarocks.org/modules/djfdyuruiry/try-catch-finally)

## Usage

Run a block of code in a traditional try block, with options to chain
catch and finally handlers as well.

Any errors are passed directly as a single variable to the catch block.

Example of use:

```lua
local try = require "try-catch-finally"

local object

try(function ()
    object = Object()
    object:doRiskyStuff()
end)
.catch(function (ex)
    print(ex)
end)
.finally(function ()
    if object then
        object:dispose()
    end
end)
```
