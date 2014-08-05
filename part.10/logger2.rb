class Logger
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

logger = Logger.new
i = 0
x = 0

logger.log '外側のブロック', i do |i|
  logger.log '内側のブロック', i do |i|
    logger.log 'もっと内側のブロック',i do |i|
      x = 'その戻り値です。'
    end
    x = 4 + 6
  end
  logger.log '内側のお隣ブロック', i do |i|
    x += 5
  end
  x *= x
end
