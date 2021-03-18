function [DD,DI,B,P,mP,Imp,Ip,Info] = SubVars(b)
%This functions gets all varibales from excel file. It takes an input b for binsize.  
%it returns DD-Distance vector, DI-intensity vector,B- absolute numbers number
%of nuclei in bin, P - %fequency or probability of finding a nuclei in that bin, mP-scaled 
%frquency with maxima =1, Imp-heat map of scaled frequency,Ip - heatmap of 
%frequency distribution, info - info about data and filename.
[DD, DI, f, s] = subGetData();
[B,P,mP] = SubBinIt(DD,b);
[Imp] = Im(mP);
[Ip] = Im2(mP, P);
Info{1} = f;
Info{2} = s;
Info{3} = size(DD,2);


 