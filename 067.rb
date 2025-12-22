G = []
File.readlines('067.txt').each do |line|
  G << line.chop.split.map(&:to_i)
end
N = G[-1].size

dp = Array.new(N) { Array.new(N) { 0 } }
(0...N).each do |i|
  dp[-1][i] = G[-1][i]
end

i = N-2
while i >= 0
  (i+1).times do |j|
    dp[i][j] = G[i][j] + [dp[i+1][j], dp[i+1][j+1] || 0].max
  end
  i -= 1
end

puts dp[0][0]
