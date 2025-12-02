require 'utils'

local input, err = io.open('input', 'r')
if not input then
  print ("Error: Couldn't open input file. Reason: " .. (err or "Unknown Error"))
  return
end

local result = 0
while true do
  Line = input:read()
  if Line == nil then break end

  if Partial == nil then
    Partial = Dial(50, Line)
  else
    Partial = Dial(Partial, Line)
  end
  if Partial == 0 then
    result = result + 1
  end
  print("Partial: " .. Partial .. "\n")
end

print("Result is: ".. result)
