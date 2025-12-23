require 'prime'

def truncatable_prime?(p)
  k = p.to_s.size-1

  # 左を切り詰め
  p1 = p
  k.times do
    p1 = p1.to_s[1..].to_i
    return false unless p1.prime?
  end

  # 右を切り詰め
  p2 = p
  k.times do
    p2 = (p2-p2%10)/10
    return false unless p2.prime?
  end

  true
end

ans = 0
i = 0
(10..).each do |n|
  next unless n.prime?
  if truncatable_prime?(n)
    i += 1
    ans += n
    break if i == 11
  end
end
puts ans

# puts truncatable_prime?(3797)
