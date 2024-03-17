using Random
using LinearAlgebra

function matrica(d, el1, el2, el3)
    A = zeros(Int64, d, d)
    B = zeros(Int64, d)
    B[B .== 0] .= el1
    A += Diagonal(B)
    B = zeros(Int64, d, d)
    B[B .== 0] .= el2
    A += triu(B, 1)
    B[B .== el2] .= el3
    A += tril(B, -1)
    A = reverse(A, dims = 2)
    return A
end

A = matrica(4, 1, 2, 3)
display(A)