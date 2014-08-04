class Orange
  def initialize
    @tree_hight = 5
    @tree_old = 1
    @tree_orange = 0
    puts '貴方はオレンジの木を植えました。'
    puts '彼の成長を見守りましょう。'
  end

  def status
    puts '彼は今こんな感じ。'
    puts "高さ：#{@tree_hight}"
    puts "年齢：#{@tree_old}"
    puts "オレンジの数：#{@tree_orange}"
  end

  def grow
    puts 'そして1年の月日が流れた。。。'
    @tree_old += 1
    @tree_hight += 2 * (2 * @tree_old)
    @tree_orange = 2 * @tree_old if @tree_old > 2
    @tree_old
  end

  def pich
    if @tree_orange > 0
      @tree_orange -= 1
      puts "めっちゃ甘い！あと#{@tree_orange}個あるね。"
    else
      puts 'もう無いんだ、食べ過ぎた。'
    end
  end

  def die_check
    puts 'ここでお別れのようですね、残念です。'
    puts 'また新しい種を撒いて、大切にしてあげてください。'
    exit
  end
end

orange = Orange.new
old = 0
loop do
  puts 'コマンド： status grow pich'
  word = gets.chomp.to_s
  case word
  when 'status'
    orange.status
  when 'grow'
    old = orange.grow
  when 'pich'
    orange.pich
  else
    puts 'それはちょっと。。。'
  end
  orange.die_check if old == 8
end
