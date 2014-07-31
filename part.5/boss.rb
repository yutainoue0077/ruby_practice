class Boss

  def answer(hope)
    puts "なにぃ？\"" + hope + "\"だとー！！おまえは首だ！！"
  end

end

hope = Boss.new
puts "望みはなんだね？"
ans = gets.chomp.to_s
hope.answer(ans)
