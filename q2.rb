kind = {0=>'グー', 1=>'チョキ', 2=>'パー'}
$guest = {a: 'Aさん', b: 'Bさん'}
def check_janken(a, b)
  if (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    result = "#{$guest[:a]}の勝ち"
  elsif (b == 0 && a == 1) || (b == 1 && a == 2) || (b == 2 && a == 0)
    result = "#{$guest[:b]}の勝ち"
  elsif a == b
    result = "引き分け"
  end

  return result
end

for i in 1..2
  n1 = rand(3)
  n2 = rand(3)
  puts "#{$guest[:a]}:#{kind[n1]}"
  puts "#{$guest[:b]}:#{kind[n2]}"
  
  puts "勝敗 = #{check_janken(n1, n2)}"
end