-- Common functions and variables

local function circularMath(res)
  return math.fmod(math.fmod(res, 100) + 100, 100)
end

function Dial(pos, line)
  print (pos .. " " .. line)
  local letter = string.match(line, "%a")
  local number = string.match(line, "%d+")
  local zeroes = 0

  if letter == "R" then
    if number + pos > 100 and pos ~= 0 then
      zeroes = math.floor((number + pos) / 100)
      print("Plus " .. zeroes .. " zeroes")
    end
    return circularMath(pos + number), zeroes
  end
  if letter == "L" then
    if tonumber(number) > pos and pos ~= 0 then
      zeroes = math.floor((number) / 100) + 1
      print("Plus " .. zeroes .. " zeroes")
    end
    return circularMath(pos - number), zeroes
  end

end
