function neparniOdDo1(a, b)
    if a % 2 == 0
        C = collect((a+1):2:b)
    end
    if a % 2 == 1
        C = collect(a:2:b)
    end
    return C
end

function neparniOdDo2(a, b)
    C = []
    for i = a:b 
        if i % 2 == 1
            push!(C, i)
        end
    end
    return C
end

C = neparniOdDo1(2, 10)
println(C)
C = neparniOdDo2(1, 10)
println(C)