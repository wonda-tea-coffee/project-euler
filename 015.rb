N = 20
dp = Array.new(N+1) { Array.new(N+1) { 1 } }

(1..N).each do |i|
  (1..N).each do |j|
    dp[i][j] = dp[i-1][j] + dp[i][j-1]
  end
end

puts dp[N][N]
