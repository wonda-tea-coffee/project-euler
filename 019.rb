def leap?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return year % 4
end

def lastday(year, month)
  lday = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  return lday[month] if month != 2 || !leap?(year)
  return lday[month] + 1
end

w = 1
ans = 0
(1900..2000).each do |year|
  (1..12).each do |month|
    ld = lastday(year, month)
    (1..ld).each do |day|
      ans += 1 if year > 1900 && day == 1 && w % 7 == 0
      w += 1
    end
  end
end
puts ans
