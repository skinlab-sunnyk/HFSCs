# HFSCs
Include all HFs from an animal in one file (see RawDataexample.xlsx file in  example data folder). Start the data analysis with function SubVars. 
*for example to get all relevant data for Sox9+ nuclei position call the function - [DD,DI,B,P,mP,Imp,Ip info] = SubVars(b); where b is bin size.*
Get the P values for all animals, PP = [animal_1_P, animal_2_P, animal_3_P]. Calculate the mean - PPmean = mean(PP,2). Scale the PPmean - Scaled_PPmean = PPmean/max(PPmean).
Use the function Im5 to create the heat map, I = Im5(Scaled_PPmean). 

