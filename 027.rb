require 'prime'

def len(a, b)
  ret = 0
  n = 0
  while (n**2 + a*n + b).prime?
    n += 1
    ret += 1
  end
  ret
end

maxlen = 0
ans = 0

(-1000...1000).each do |a|
  (1..1000).each do |b|
    next unless b.prime?

    if (l = len(a, b)) > maxlen
      maxlen = l
      ans = a*b
    end
  end
end
puts ans
