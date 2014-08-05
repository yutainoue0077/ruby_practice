class Logger
  @@i = 0
  def log(block_name, &utigawa)
    indent = ' '
    @@i += 1
    puts "#{indent * (@@i - 1)}\"#{block_name}\"を開始..."
    modorichi = utigawa.call
    puts "#{indent * (@@i - 1)}...\"#{block_name}\"が終了して、戻り値は\"#{modorichi}\""
    @@i -= 1
  end
end

logger = Logger.new
i = 0

logger.log '外側のブロック' do
  logger.log '内側のブロック' do
    logger.log 'もっと内側のブロック' do
      i = 'その戻り値です。'
    end
    i = 4 + 6
  end
  logger.log '内側のお隣ブロック' do
    i += 5
  end
  i *= i
end
