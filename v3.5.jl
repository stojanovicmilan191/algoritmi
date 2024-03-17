function parniIneparniRedovi(d, el1, el2)
    A = zeros(Int64, d, d)
    display(A)
    A[1:2:end, :] .= el1
    A[2:2:end, :] .= el2
    return A
end

A = parniIneparniRedovi(5, 1, 0)
display(A)