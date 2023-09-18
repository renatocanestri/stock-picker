def stock_picker(array)
  min_price = array[0]
  max_diff = 0 
  min_index = 0
  max_index = 0
  array.each_with_index do |element, index|
    if (element - min_price) > max_diff
      max_diff = element - min_price
      max_index = index
      min_index = array.index(min_price)
    end
    if (element < min_price)
      min_price = element
    end
  end
  return [min_index, max_index] 
end

p stock_picker([17,3,6,9,15,8,6,1,10])
