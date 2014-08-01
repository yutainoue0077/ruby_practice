class Doragon

  def initialize
    @dor_name = ""
    @dor_hp = 11
    @dor_iraira = 0
    puts "ペットショップで売れ残ってたドラゴンを買ってしまった。。。"
    puts "名前は…"
    @dor_name = gets.chomp.to_s
    puts "#{@dor_name}でいいや。"
  end

  def naderu
    puts "頭をなでてみた。"
    puts "なんか機嫌が悪くなった。。。"
    @dor_iraira += 3
    return @dor_iraira
  end

  def asobu
    puts "マリパをやった。"
    puts "おもいっきり手を痛めた。"
    @dor_iraira += 7
    @dor_hp = @dor_hp -3
    return @dor_iraira
  end

  def sanpo
    puts "勝手に先に走り去ってしまった。"
    puts "~3時間後~"
    puts "やっと捕まえた…！"
    @dor_iraira = @dor_iraira - 10
    @dor_hp = @dor_hp - 5
  end

  def esa
    if @dor_hp == 11
      puts "食べたがらない。。。"
    else
      puts "#{@dor_name}「いやー！マジ旨いわー！」"
      puts "me「ああそうですか。」"
      @dor_hp = 11
    end
  end

  def die_check
    if @dor_hp <= 0
      puts "〜そして次の日〜"
      puts "#{@dor_name}、朝だよー！"
      puts "#{@dor_name}？"
      puts "#{@dor_name}…！！！！"
      puts "END"
      exit
    end
    if @dor_iraira >= 15
      puts "#{@dor_name}の目つきが怖い。。。"
      puts "そして貴方にかじりついた！！"
      puts "END"
      exit
    end
  end

end

doragon = Doragon.new

  loop{
    puts "コマンド： naderu asobu sanpo esa"
    word = gets.chomp.to_s
    case word
    when "naderu" then
      doragon.naderu
    when "asobu" then
      doragon.asobu
    when "sanpo" then
      doragon.sanpo
    when "esa" then
      doragon.esa
    else
      puts "それはちょっと。。。"
    end
    doragon.die_check
  }
