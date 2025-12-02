-- Common functions and variables

local function circularMath(number)
  return math.fmod(math.fmod(number, 100) + 100, 100)
end

function Dial(pos, line)
  local letter = string.match(line, "%a")
  local number = string.match(line, "%d+")

  if letter == "R" then
    return circularMath(pos + number)
  end
  if letter == "L" then
    return circularMath(pos - number)
  end

end
