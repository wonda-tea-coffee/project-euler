require 'prime'

def circular_prime?(p)
  return false unless p.prime?
  q = p.to_s

  (q.size-1).times do
    q = q[-1] + q[...-1]
    return false unless q.to_i.prime?
  end

  true
end

ans = 0
(1..1_000_000).each do |n|
  ans += 1 if circular_prime?(n)
end
puts ans
