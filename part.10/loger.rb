class Loger
  def log(block_name, i, &utigawa)
    indent = ' '
    i += 1
    puts "#{indent * (i - 1)}\"#{block_name}\"を開始..."
    modorichi = utigawa.call i
    puts "#{indent * (i - 1)}...\"#{block_name}\"が終了して、戻り値は\"#{modorichi}\""
    i -= 1
    i
  end
end

loger = Loger.new
i = 0
x = 0

loger.log '外側のブロック', i do |i|
  loger.log '内側のブロック', i do |i|
    loger.log 'もっと内側のブロック',i do |i|
      x = 'その戻り値です。'
    end
    x = 4 + 6
  end
  loger.log '内側のお隣ブロック', i do |i|
  x += 5
  end
  i *= i
end
