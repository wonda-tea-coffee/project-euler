matrix = []
File.readlines('081.txt').each do |line|
  matrix << line.split(',').map(&:to_i)
end
N = matrix.size
DP = Array.new(N) { Array.new(N) { 0 } }
DP[0][0] = matrix[0][0]
(1...N).each do |i|
  DP[0][i] = DP[0][i-1] + matrix[0][i]
  DP[i][0] = DP[i-1][0] + matrix[i][0]
end
(1...N).each do |i|
  (1...N).each do |j|
    DP[i][j] = [DP[i-1][j], DP[i][j-1]].min + matrix[i][j]
  end
end
puts DP[-1][-1]
