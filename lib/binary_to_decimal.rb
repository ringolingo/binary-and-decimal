def binary_to_decimal(binary_array)
  decimal = 0
  binary_array.reverse.each_with_index do |bit, index|
    unit = bit * 2 ** index
    decimal += unit
  end
  return decimal
end

def decimal_to_binary(decimal_number)
  binary_value = []
  while decimal_number > 0
    binary_value << (decimal_number % 2)
    decimal_number = (decimal_number / 2)
  end
  until binary_value.length == 8
    binary_value << 0
  end
  return binary_value.reverse
end
