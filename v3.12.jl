function proizvodPrvihN1(n)
    proizvod = 1
    for i = 1:n
        proizvod *= i
    end
    return proizvod
end

function proizvodPrvihN2(n)
    A = collect(1:n)
    proizvod = prod(A)
    return proizvod
end

proizvod = proizvodPrvihN1(5)
println(proizvod)
proizvod = proizvodPrvihN2(5)
println(proizvod)