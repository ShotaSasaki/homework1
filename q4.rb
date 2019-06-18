$guest = {you: 'あなた', computer: 'コンピューター'}

def check_janken(a, b)
  if (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    result = "#{$guest[:you]}の勝ち"
  elsif (b == 0 && a == 1) || (b == 1 && a == 2) || (b == 2 && a == 0)
    result = "#{$guest[:computer]}の勝ち"
  elsif a == b
    result = "引き分け"
  end

  return result
end

kind = {0=>'グー', 1=>'チョキ', 2=>'パー'}
while(true)
  print "グーは0, チョキは1, パーは2 を入力してください:"
  input = gets.chomp
  if input == "exit"
    exit!
  end
  unless input =~ /^[0-9]+$/ && input.to_i.between?(0,2) then
    puts "入力が正しくありません"
    next
  end
  
  random = rand(3)
  puts "#{$guest[:computer]}:#{kind[random]}"
  puts "#{$guest[:you]}:#{kind[input.to_i]}"

  puts "勝敗 = #{check_janken(input.to_i, random)}"
end