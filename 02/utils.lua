-- Common functions and variables

-- From x to y check invalid IDs


-- Check if a number's digits sum is pair
function HasPairDigits(number)
  local digits = string.len(number)
  if math.fmod(digits,2) == 0 then
    return true
  end
  return false
end
