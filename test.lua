local try = require "try-catch-finally"

-- full test
try(function() 
    print("in try block")
    error("raise an error..")
end).
catch(function(ex) 
    print("catch the error: " .. ex)
end).
finally(function() 
    print("in finally block")
end)

print("after try-catch-finally")

--- finally fires even without catch test
try(function() 
    print("in second try block")
    error("raise an error..")
end).
finally(function() 
    print("in second finally block")
end)

print("should never print")
