def englishNumber number
    count = 0
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
    thousand = englishNumber write2
    numString = numString + thousand + " billion"
    numString = numString + " and " if left > 0
  end

  if write > 9999
    write2 = write/10_000
    write = write - write2*10_000
    thousand = englishNumber write2
    numString = numString + thousand + " million"
    numString = numString + " and " if left > 0
  end

  if write > 9
    write2 = write/10
    write = write - write2*10
    thousand = englishNumber write2
    numString = numString + thousand + " thousand"
    numString = numString + " and " if left > 0
  end

  if write > 0
    write2 = write
    write = 0
    hundreds  = englishNumber write2
    numString = numString + hundreds + " hundred"
    numString = numString + " and" if left > 0
     if left > 0
      numString = numString + " "
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
      count = 1
    end
    if (left > 0) and (count == 1)
      numString = numString + " and "
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts englishNumber(2)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(99_999_999)
puts englishNumber(1_000_000_000)
puts englishNumber(99_999_999_999)
