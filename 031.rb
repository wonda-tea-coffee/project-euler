N = 200
C = [1, 2, 5, 10, 20, 50, 100, 200]
dp = [0]*(N+1)
C.each do |c|
  dp[c] += 1
  (c..N).each do |i|
    dp[i] += dp[i-c]
  end
end
puts dp[N]
