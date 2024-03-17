using Random
using LinearAlgebra

function kvadratna(a, b, c)
    x1 = b * (-1) + sqrt(b*b - 4 * a * c) / (2 * a)
    x2 = b * (-1) - sqrt(b*b - 4 * a * c) / (2 * a)
    return x1, x2
end

x1, x2 = kvadratna(1, 4, -5)
println(x1, " ", x2)