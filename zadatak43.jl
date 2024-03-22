function pretraga(A, kljuc)
    p = 1
    r = length(A)
    while p <= r
        q = Int(floor((p + r) / 2))
        if A[q] == kljuc
            return q
        end
        if A[q] > kljuc
            p = q + 1
        else
            r = q - 1
        end
    end
    return -1
end

A = [1 59 26 5 84 32 56 55 12 10 18 95 247 66]

sort!(A, rev=true, dims = 2)

println(A)

pola = floor(length(A) / 2)
q = pretraga(A, 10)
if q != -1
    if q >= pola
        println("Element je u drugoj polovini niza, na poziciji $q")
    else
        println("Element je u prvoj polovini niza, na poziciji $q")
    end
else
    println("Element nije pronadjen u nizu")
end