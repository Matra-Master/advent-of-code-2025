-- Common functions and variables

-- From x to y check invalid IDs
function IsValidId(number)
  local digits = string.len(number)
  if math.fmod(digits,2) ~= 0 then return false end
  local first_half = string.sub(number, 1, digits/2)
  print("First half of number" .. number .. " is ".. first_half)
  print("Comparing " .. number .. " with ".. first_half .. first_half)
  if (tonumber(first_half .. first_half) == number) then
    return true
  end
  return false
end

-- Check if a number's digit sum is even
function HasEvenDigits(number)
  local digits = string.len(number)
  if math.fmod(digits,2) == 0 then
    return true
  end
  return false
end
