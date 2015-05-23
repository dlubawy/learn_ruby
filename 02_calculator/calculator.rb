def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(nums)
  nums.inject(0) {|sum, n| sum + n}
end

def multiply(*num)
  num.inject(1) {|product, n| product * n}
end

def power(num1, num2)
  num = []
  while num2 > 0
    num.push(num1)
    num2 -= 1
  end
  num.inject(1) {|product, n| product * n}
end

def factorial(num)
  num == 0? 1 : (1..num).inject(:*)
end
