function funkcija(A, el1)
    n, m = size(A)
    B = []
    zbir = 0
    for i = 1:2:n
        for j = 1:m 
            if A[i, j] % el1 == 0
                push!(B, A[i, j])
            end
        end
    end
    for i = 1:n 
        if A[i, i] < el1
            zbir += A[i, i]         
        end
    end
    return B, zbir
end

A = [1 2 2 2; 3 1 3 3; 3 3 3 3; 0 0 0 5]

B, zbir = funkcija(A, 2)
println(zbir)
display(B)