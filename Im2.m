function [I] = Im2(mP, P)
% takes scaled frequency and frequnecy and makes an image with P/maxP in width and P in intensity
s = size(mP,1);
I = zeros(s,100);
for i = 1:s
    S = round((mP(i)*100)/2);
    S1 = 50 - S + 1;
    S2 = 50 + S - 2;
    I(i,S1:S2) = 1*P(i); 
end