function [B,P,mP] = SubBinIt(DD,b)
%Takes in distance vector DD and binsize b.Calculates the distance of Sox9 
%nuclei from median of given points. Returns B - number of nuclei in a bin,
%frequency of nuclei in the bin. mP - scaled frequency with maxima =1. 
s = round(500/b)+1;
B = zeros(s,1);
for j = 1:s 
    for i = 1:size(DD, 2)
    
    if DD(1,i)>=(j-1)*b && DD(1,i)<(j)*b 
        B(j) = B(j)+1;
    end
    end
end
P = B/sum(B);
mP = P/max(P);
end

