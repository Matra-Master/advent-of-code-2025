require 'utils'

local input, err = io.open('test_input', 'r')
if not input then
  print ("Error: Couldn't open input file. Reason: " .. (err or "Unknown Error"))
  return
end

local result = 0
Line = input:read()

for x, y in string.gmatch(Line, "(%d+)-(%d+)") do
  local i = tonumber(x)
  local j = tonumber(y)
  print("|LOG| Checking range from " .. x .. " to " .. y)
  print()
  -- Drain case where range has two odd numbers
  if not HasEvenDigits(x) and not HasEvenDigits(y) and string.len(x) == string.len(y) then
    print ("|TRAP| Ranges are odd: ".. x .. " and " .. y)
    goto continue
  end
  if not HasEvenDigits(x) and HasEvenDigits(y) and string.len(x) + 1 == string.len(y) then
    local digits = string.len(x)
    i = math.floor(10 ^ digits)
    j = tonumber(y)
  end
  if HasEvenDigits(x) and not HasEvenDigits(y) and string.len(x) + 1 == string.len(y) then
    local digits = string.len(x)
    i = tonumber(x)
    j = math.floor(10 ^ digits - 1)
  end

  while i <= j do
    if IsValidId(i) then
      result = result + i
      print()
      print("|ANSWER| Valid ID " .. i)
      print()
    end
    i = i + 1
  end

  ::continue::
end


print("|ANSWER| Result is: ".. result)
