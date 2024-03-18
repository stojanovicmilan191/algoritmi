function minVrsta(A)
    B = sum(A, dims = 1)
    min = minimum(B)
    redBr = findfirst(isequal(min), B)
    return redBr
end

A = [1 1 1 1; 2 2 2 2; 3 3 3 3; 4 4 4 4]

redBr = minVrsta(A)
println(redBr)