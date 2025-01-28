def prime_number_test(value)
  prime = true
  (2..(value - 1)).each do |i|
    puts "#{i} -- divided by #{value.to_f % i.to_f}"
    if (value.to_f % i.to_f).zero?
      prime = false
      break
    end
  end
  prime
end

def sum_of_prime(values)
  values.select { |value| prime_test(value) }.sum
end

def factorial(value)
  final_value = 1
  (1..value).each do |i|
    final_value *= i
  end
  final_value
end

def repeated_letters(value)
  value = value.to_s.chars
  values = []
  dups = []
  value.each do |cha|
    dups.push(cha) if values.include?(cha)
    values.push(cha)
  end
  dups
end

def fibonacci(final_num)
  return [] if final_num <= 0
  return [0] if final_num == 1

  numbers = [0, 1]
  (2..final_num).each do |num|
    numbers.push(numbers[-1] + numbers[-2])
  end
  numbers
end
