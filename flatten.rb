def my_flatten(array, flat = [])
  array.each do |element|
    if element.class == Array
      my_flatten(element, flat)
    else
      flat << element
    end
  end
  flat
end