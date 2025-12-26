def f(b, a)
  (b/10 == a%10 && Rational(b, a) == Rational(b%10, a/10)) ||
        (b%10 == a/10 && a%10 > 0 && Rational(b, a) == Rational(b/10, a%10))
end

ans = 1
(10..99).each do |a|
  (10...a).each do |b|
    if f(b, a)
      puts "#{b}/#{a}"
      ans *= Rational(b, a)
    end
  end
end
puts ans.denominator
