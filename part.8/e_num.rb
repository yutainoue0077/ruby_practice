def english_number(number)
    return '負でない数を入力してください.'  if number < 0
    return 'zero' if number == 0

  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left  = number
  write = left/100
  left  = left - write*100

  if write > 9_999_999
    write2 = write/10_000_000
    write = write - write2*10_000_000
    billion = englishNumber write2
    numString = numString + billion + " billion "
  end

  if write > 9_999
    write2 = write/10_000
    write = write - write2*10_000
    million = englishNumber write2
    numString = numString + million + " million "
  end

  if write > 9
    write2 = write/10
    write = write - write2*10
    thousand = englishNumber write2
    numString = numString + thousand + " thousand "
  end

  if write > 0
    write2 = write
    write = 0
    hundreds  = englishNumber write2
    numString = numString + hundreds + " hundred"
     if left > 0
      numString = numString + " "
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if (write == 1) && (left > 0)
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts english_number(2)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
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
