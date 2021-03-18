function [DD, DI, f, s] = subGetData()
%gets XLSX file and reads it and returns variables. The excel file should
%be in format such that x and y should be in colum 5 and 6 of each
%Hair follicle data. Intensity info should be in colum 3. For each hair follicle
%the last 3 rows should be of epidermis around the HF. If the format of xlsx file
%is different then the function needs to be modified accordingly. The function returns
%- distance vector DD, Intensity vector DI, file name f, and number of
%HFs - s. 
[baseName, folder] = uigetfile('.xlsx');
f = fullfile(folder, baseName);
R = xlsread(f);
s = size(R,2)/7;
for i = 1:s
p1 = (5*i)+(2*(i-1));
p2 = (5*i)+(2*(i-1)) + 1;
p3 = (5*i)+(2*(i-1)) - 1;
U(:,i) = R(:,p1);
V(:,i) = R(:,p2);
In(:,i) = R(:,p3);
end
for i = 1:s
    for j = 1:size(U,1)
        if isnan(U(j,i))
            
            n(i) = j-1;
            d(i) = n(i) - 3;
            e(i) = n(i) - 2;
            
            
            break
        else 
            n(i) = length(U(:,i));
            d(i) = n(i) - 3;
            e(i) = n(i) - 2;
        end
    end
end
%i
for i = 1:s
  %  D = dX{i}
    %D = subD(dX{i}, dY{i}, eX{i}, eY{i});

    dX{i} = U(1:d(i),i);
    eX{i} = U(e(i):n(i),i);
    dY{i} = V(1:d(i),i);
    eY{i} = V(e(i):n(i),i);
    dI{i} = transpose(In(1:d(i),i));   
    D{i} = subD(dX{i},dY{i},eX{i},eY{i});
end
DD = [D{:}];
DI = [dI{:}];
DI = DI/max(DI);


