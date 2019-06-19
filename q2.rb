KIND = {0=>'グー', 1=>'チョキ', 2=>'パー'}
GUEST = {a: 'Aさん', b: 'Bさん'}

def judge(a, b)
  if (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    return "#{GUEST[:a]}の勝ち"
  elsif (b == 0 && a == 1) || (b == 1 && a == 2) || (b == 2 && a == 0)
    return "#{GUEST[:b]}の勝ち"
  elsif a == b
    return "引き分け"
  end
end

for i in 1..2
  a = rand(3)
  b = rand(3)
  puts "#{GUEST[:a]}:#{KIND[a]}"
  puts "#{GUEST[:b]}:#{KIND[b]}"
  
  puts "勝敗 = #{judge(a, b)}"
end