require 'utils'

local input, err = io.open('input', 'r')
if not input then
  print ("Error: Couldn't open input file. Reason: " .. (err or "Unknown Error"))
  return
end

local result = 0
Line = input:read()



print("|ANSWER| Result is: ".. result)
