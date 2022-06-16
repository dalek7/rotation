clc; clear; close all;
% https://en.wikipedia.org/wiki/Rotation_matrix#Decompositions

Q = [0.36, 0.48, -0.8;
    -0.8, 0.6, 0;
    0.48, 0.64, 0.6];

%https://github.com/dalek7/Algorithms/blob/master/Rotation/Coplanarity/COPLANAR_042314_140602.txt
% Q = [0.71, -0.12, 0.69;
% -0.09, -0.99 -0.08;
% -0.70, 0.00, 0.72]

disp(Q)

% If Q acts in a certain direction, v, purely as a scaling by a factor λ, then we have
[V,D] = eig(Q)


D = diag(D)

disp(D)

%Two features are noteworthy.
% First, one of the roots (or eigenvalues) is 1, which tells us that some direction is unaffected by the matrix.
% For rotations in three dimensions, this is the axis of the rotation (a concept that has no meaning in any other dimension).

D(3)

%  Second, the other two roots are a pair of complex conjugates, whose product is 1 (the constant term of the quadratic), 
% and whose sum is 2 cos θ (the negated linear term). 
% This factorization is of interest for 3 × 3 rotation matrices because the same thing occurs for all of them. 
% (As special cases, for a null rotation the "complex conjugates" are both 1, and for a 180° rotation they are both −1.)
D(1) * D(2) % --> 1
D(1) + D(2) % --> 2 cos θ

