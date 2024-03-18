using Random
using LinearAlgebra
using Primes #import Pkg; Pkg.add("Primes") --> pokreni ovu komandu u treminalu da bi ova linija radila

function faktorizacija(n)
    faktori = []
    for i in primes(n)
        while n % i == 0
            push!(faktori, i)
            n /= i
        end
        if n == 1
            break
        end
    end
    return faktori
end

faktori = faktorizacija(273)
println(faktori)