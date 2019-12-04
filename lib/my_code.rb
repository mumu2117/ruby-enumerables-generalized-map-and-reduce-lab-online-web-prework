def map(source_array)
  return_array = []

  source_array.each do |element|
    return_array.push(yield(element))
  end

  return return_array
end



def reduce(source_array, starting_point = 0)
  if(source_array[0].is_a? Numeric)
    result = 0 + starting_point
  else
    result = false
  end

  source_array.each do |element|
    result = yield(result, element)
  end

  return result
end 