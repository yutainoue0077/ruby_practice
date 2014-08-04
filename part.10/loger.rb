class Loger

  def log block_name, &utigawa
    modorichi = utigawa.call
    puts "\"#{block_name}\"を開始..."
    puts "...\"#{block_name}\"が終了して、戻り値は\"#{modorichi}\""
  end

end

loger = Loger.new
i = 0

loger.log "外側のブロック" do
  loger.log "内側のブロック" do
    i = 4 + 6
  end
  loger.log "内側のお隣ブロック" do
    i = i + 5
  end
  i = i * i
end
