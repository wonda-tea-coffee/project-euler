ans = 0
File.read('022.txt').gsub('"', '').split(',').sort.each.with_index(1) do |word, i|
  puts "#{i}: #{word}" if word == 'COLIN'
  ans += word.codepoints.map{|n| n-64}.sum * i
end
puts ans
