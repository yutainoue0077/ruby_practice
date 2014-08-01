def doUntilFalse firstInput, someProc
#  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
    p input
  end

  return input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         #  末尾の数字を取り出して...
    array.push lastNumber*lastNumber  #  ...その2乗の数と置き換え...
    array.push lastNumber-1           #  ...1つ小さい数を後につける。
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('私はこれを午前3:00に書いています; 私はもうノックアウト!', alwaysFalse)
