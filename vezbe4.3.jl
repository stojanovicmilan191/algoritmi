struct Klub
    ime::String
    brojPoena::Int
    datiGolovi::Int
    primljeniGolovi::Int
end

function uporedi(klub1, klub2)
    return klub1.brojPoena > klub2.brojPoena || klub1.brojPoena == klub2.brojPoena && (klub1.datiGolovi-klub1.primljeniGolovi) > (klub2.datiGolovi - klub2.primljeniGolovi)
end

function mergeSort(A)
    mergeSortStep(A, 1, length(A))
end

function merge!(A, p, q, r)
    L = copy(A[p:q])
    R = copy(A[q+1:r])
    min = Klub("nema", typemin(Int64), 0, 0)
    push!(L, min)
    push!(R, min)
    i = 1
    j = 1
    for k = p:r
        if uporedi(L[i], R[j])
            A[k] = L[i]
            i = i + 1
        else
            A[k] = R[j]
            j = j + 1
        end
    end
end

function mergeSortStep(A, p, r)
    if p < r
        q = Int64(floor((p + r)/2))
        mergeSortStep(A, p, q)
        mergeSortStep(A, q + 1, r)
        merge!(A, p, q, r)
    end
end

klubovi = []
push!(klubovi, Klub("TSC", 15, 10, 10))
push!(klubovi, Klub("Partizan", 16, 10, 10))
push!(klubovi, Klub("Crvena Zvezda", 17, 10, 10))
mergeSort(A)
display(klubovi)