def english_number(number)
  return '負でない数を入力してください.'  if number < 0
  return 'zero' if number == 0

  num_string = ''

  ones_place = %w(one two three four five
                  six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty
                  sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen
                 sixteen seventeen eighteen nineteen)

  left  = number
  write = left / 100
  left  -= write * 100

  if write > 9_999_999
    write2 = write / 10_000_000
    write -= write2 * 10_000_000
    billion = english_number write2
    num_string += billion + ' billion'
    num_string += ' and ' if left > 0
  end

  if write > 9_999
    write2 = write / 10_000
    write -= write2 * 10_000
    million = english_number write2
    num_string += million + ' million'
    num_string += ' and ' if left > 0
  end

  if write > 9
    write2 = write / 10
    write -= write2 * 10
    thousand = english_number write2
    num_string += thousand + ' thousand'
    num_string += ' and ' if left > 0
  end

  if write > 0
    write2 = write
    hundreds  = english_number write2
    num_string += hundreds + ' hundred'
    num_string += ' and ' if left > 0
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if (write == 1) && (left > 0)
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
      count = 1
    end
    num_string += ' and ' if (left > 0) && (count == 1)
  end

  write = left

  num_string += ones_place[write - 1] if write > 0
  num_string
end

puts english_number(2)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3_211)
puts english_number(99_999)
puts english_number(1_000_000_000)
puts english_number(999_999)
puts english_number(9_999_999)
puts english_number(99_999_999)
puts english_number(999_999_999)
puts english_number(9_999_999_999)
