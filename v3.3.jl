function sumaIproizvod(a, b)
    return a + b > a * b
end
function stepeniAiB(a, b)
    return a^b > b^a
end

I1 = sumaIproizvod(2, 1)
I2 = stepeniAiB(2, 1)
println(I1, " ", I2)