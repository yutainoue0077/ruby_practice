class Gramma
  def answer(say)
    @bye_count = 0
    loop do
      if say == 'BYE'
        puts 'あ？なんだってぇ?' + ('??' * @bye_count)
        @bye_count += 1
      elsif say == ''
        puts '無言はねぇだろうよ。'
        @bye_count = 0
      elsif say == say.upcase
        year = 1930 + rand(21)
        puts "いやー、#{year}以来ないねぇ。。。"
        @bye_count = 0
      else
        puts 'もっと大きな声でしゃべれぇ！！！'
        @bye_count = 0
      end
      say = gets.chomp.to_s
      break if @bye_count >= 2
    end
    puts 'よろしい。'
  end
end

gramma = Gramma.new
puts 'Hay, gramma!'
say = gets.chomp.to_s
gramma.answer(say)
