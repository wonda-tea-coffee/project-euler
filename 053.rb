N = 100
dp = Array.new(N+1) { Array.new(N+1) { 1 } }
ans = 0
(1..N).each do |i|
  dp[i][1] = i
  (2...i).each do |j|
    dp[i][j] = dp[i-1][j] + dp[i-1][j-1]
    ans += 1 if dp[i][j] > 1_000_000
  end
end
puts ans
