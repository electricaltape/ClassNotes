function householder_transformation(y)
# create a householder transformation given some vector y.
    T = eye(size(y)[1])
end

function deflate(a, x)

# return a deflated version of A, sans the eigenpair of which x is the
# eigenvector.
    if x[1] == 0
        sign1 = 1
    else
        sign1 = sign(x[1])
    end

    e1 = zeros(size(x))
    e1[1] = 1
    y = x + sign1*norm(x,2)*e1
    println(size(y))
    T = eye(size(a)[1]) - 2/norm(y,2)^2*(y*reshape(y,1,size(y)[1]))

    U = T[:,2:]
    permute(U,[2,1])*a*U
end

function power_method(A)
# apply the power method to A to find the eigenvector associated with the
# largest eigenvalue.
    x = ones(size(A)[1])
    for i=1:100
        x = A*x / norm(x,2)
    end
    x/norm(x,2)
end

function main()
    A = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    A = reshape(A,4,4)
end
