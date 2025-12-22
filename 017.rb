C = {}
C[0] = 0
C[1] = 3 # one
C[2] = 3 # two
C[3] = 5 # three
C[4] = 4 # four
C[5] = 4 # five
C[6] = 3 # six
C[7] = 5 # seven
C[8] = 5 # eight
C[9] = 4 # nine
C[10] = 3 # ten
C[11] = 6 # eleven
C[12] = 6 # twelve
C[13] = 8 # thirteen
C[14] = 8 # fourteen
C[15] = 7 # fifteen
C[16] = 7 # sixteen
C[17] = 9 # seventeen
C[18] = 8 # eighteen
C[19] = 8 # nineteen
C[20] = 6 # twenty
C[30] = 6 # thirty
C[40] = 5 # forty
C[50] = 5 # fifty
C[60] = 5 # sixty
C[70] = 7 # seventy
C[80] = 6 # eighty
C[90] = 6 # ninety

def f(n)
  if n <= 20
    C[n]
  elsif n < 100
    t = n - n%10
    C[t] + f(n%10)
  elsif n % 100 == 0
    C[n/100] + 7
  else
    C[n/100] + 10 + f(n%100)
  end
end

ans = 11 # one thousand
(1..999).each do |i|
  t = f(i)
  puts "#{i}: #{t}"
  ans += t
end
puts ans
