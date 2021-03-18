function [I] = Im5(mP)
%Makes an image with P/maxP in width and intensity
s = size(mP,1);
I = zeros(s,50);
for i = 1:s
    S = round((mP(i)*100)/4);
    S1 = 25 - S + 1;
    S2 = 25 + S - 2;
    I(i,S1:S2) = 1; 
end