def fibonacci_sum(n)
    a, b, total = 0, 1, 0
    n.times do
        total += a
        a, b = b, a + b
    end
    total
end

puts fibonacci_sum(100)
puts "calculo realizado desde rb"
