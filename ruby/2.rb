# Each new term in the Fibonacci sequence is generated by adding the
# previous two terms. By starting with 1 and 2, the first 10 terms
# will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do
# not exceed four million, find the sum of the even-valued terms.

one = two = 1
fib = sum = 0
while fib < 4000000 do
  fib = one + two
  sum += fib if fib.even?
  one = two
  two = fib
end

puts sum
