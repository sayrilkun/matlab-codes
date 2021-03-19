function [y1, y2, y3] = matrix_sub_func(A, B, K, order)
% Calculating A and B matrices
% The right most column denotes the max. power of z (here z^-3) and the
% power decreases as we move towards the left most column.
for n = 2:order
    B_temp = zeros(1, order+1);
    count = 0;
    for m = 1:order+1
        if B(n-1,m) == 0
            count = count+1;
            continue
        else
            B_temp(1,m-count) = B(n-1,m);
        end
    end
    A(n,:) = (A(n-1,:) - K(n-1)*B_temp(1,:))./(1-(K(n-1)^2));
    B(n,:) = fliplr(A(n,:));
    K(n) = A(n, end-n+1);
end
[row_B, col_B] = size(B);
% Rearranging matrix B
for j = 1:row_B
    for k = 1:col_B
        if B(j,1) == 0
            B(j,:) = circshift(B(j,:),col_B-1); % Circular shift
        else
            break;
        end
    end
end
y1 = A;
y2 = B;
y3 = fliplr(K);
end