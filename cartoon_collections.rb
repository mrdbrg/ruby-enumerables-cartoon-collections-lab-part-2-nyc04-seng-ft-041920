def square_array(array)
  doubled = array.map do |element|
    element * element
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map do |element|
    element.concat("!").capitalize()
  end
end

def long_planeteer_calls(planeteer_calls)
   planeteer_calls.any? do |word|
      word.size > 4
  end
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  count = 0
  planeteer_calls.map do |word|
    if valid_calls[count] == word
      return word
    end
    count += 1
  end
  nil
end
