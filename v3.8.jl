using Random
using LinearAlgebra

function funkcija(A, B, el1)
    n, m = size(A)
    C = zeros(Int64, n, m)
    C += triu(A, 1)
    C += tril(B, -1)
    C[C .== 0] .= el1
    return C
end

A = [1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1]
B = [3 3 3 3; 3 3 3 3; 3 3 3 3; 3 3 3 3]
C = funkcija(A, B, 2)
display(C)