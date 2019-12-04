def map(source_array)
  new = source_array
  i=0 

  while i < new.length do
    new[i] = (yield(new[i]))

    i += 1
  end 

  new
end


def reduce(source_array, starting_value = nil)
  if starting_value == nil
    value = starting_value
    i=0
  else
    value = source_array[0]
    i=1
  end 


  while i < source_array.length do 
    value += source_array[i]
    yield()
    i += 1
  end
  #yield(value)
  value
end 
