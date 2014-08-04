class Loger
@@i = 0

  def log block_name, &utigawa
    indent = " "
    @@i += 1
    puts "#{indent * (@@i - 1)}\"#{block_name}\"を開始..."
    modorichi = utigawa.call
    puts "#{indent * (@@i - 1)}...\"#{block_name}\"が終了して、戻り値は\"#{modorichi}\""
    @@i -= 1
  end

end

loger = Loger.new
i = 0


loger.log "外側のブロック" do
  loger.log "内側のブロック" do
    loger.log "もっと内側のブロック" do
      i = "その戻り値です。"
    end
    i = 4 + 6
  end
  loger.log "内側のお隣ブロック" do
    i = i + 5
  end
  i = i * i
end
