require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
end

# my tests for decimal_to_binary

describe "decimal to binary" do
  it "From 162 to 10100010" do
    decimal = 162
    expected_binary_array = [1, 0, 1, 0, 0, 0, 1, 0]

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 26 to 00011010" do
    decimal = 26
    expected_binary_array = [0, 0, 0, 1, 1, 0, 1, 0]

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 207 to 11001111" do
    decimal = 207
    expected_binary_array = [1, 1, 0, 0, 1, 1, 1, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

end
