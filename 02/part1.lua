require 'utils'

local input, err = io.open('input', 'r')
if not input then
  print ("Error: Couldn't open input file. Reason: " .. (err or "Unknown Error"))
  return
end

local result = 0
Line = input:read()

for x, y in string.gmatch(Line, "(%d+)-(%d+)") do
  print("Range from " .. x .. " to " .. y)
  -- Drain case where range has two odd numbers
  if not HasEvenDigits(x) and not HasEvenDigits(y) then
    print ("Odds: ".. x .. " and " .. y)
    goto continue
  end



  ::continue::
end



print("Result is: ".. result)
