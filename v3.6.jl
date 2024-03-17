using Random
using LinearAlgebra

function proizvodDijagonale(A)
    B = Diagonal(A)
    C = prod(B[B .!= 0])
    return C
end

A = [1 2 3; 4 5 6; 7 8 9]

C = proizvodDijagonale(A)
println(C)