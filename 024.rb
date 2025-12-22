'0123456789'.chars.permutation.each.with_index(1) do |perm, i|
  if i == 1_000_000
    puts perm.join
    break
  end
end