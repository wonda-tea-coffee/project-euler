def pentagonal?(n)
  m = (1+Math.sqrt(1+24*n))/6
  m == m.to_i
end

i = 1
pentagonals = []
while true
  n = i*(3*i-1)/2

  pentagonals.each do |pentagonal|
    d = n-pentagonal
    next unless pentagonal?(d)
    next unless pentagonal?(n+pentagonal)

    puts d
    exit
  end

  pentagonals.unshift(n)
  i += 1
end
