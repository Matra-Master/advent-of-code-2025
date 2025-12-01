require 'utils'

local input, err = io.open('input', 'r')

if not input then
  print ("Error: Couldn't open input file. Reason: " .. (err or "Unknown Error"))
  return
end

local message = input:read("*all")

print (message)

Line = 50

function dial(--[[string]] line)
  print (line[1])
end

dial('R60')
