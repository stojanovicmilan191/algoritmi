function brojPonavljanja(A, kljuc)
    brojac = 0
    n = length(A)
    for i = 1:n
        if A[i] == kljuc
            brojac += 1
        end
    end
    return brojac
end

A = [1 2 3 4 5 6 7 8 9 1 2 3 22 3 4]
brojac = brojPonavljanja(A, 1)
println(brojac)