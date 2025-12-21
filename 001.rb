def f(n, k)
  m = n/k*k/k
  k*m*(m+1)/2
end

N = 999
puts f(N,3)+f(N,5)-f(N,15)
