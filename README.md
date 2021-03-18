# HFSCs
Include all HFs from an animal in one file (see RawDataexample.xlsx file in  example data folder). Start the data analysis with function SubVars. 
*for example to get all relevant data for Sox9+ nuclei position call the function - [DD,DI,B,P,mP,Imp,Ip info] = SubVars(b); where b is bin size.*
Get the P values for all animals, PP = [animal_1_P, animal_2_P, animal_3_P]. Calculate the mean - PPmean = mean(PP,2). Scale the PPmean - Scaled_PPmean = PPmean/max(PPmean).
Use the function Im5 to create the heat map, I = Im5(Scaled_PPmean). 

For doing the stat test use matrix PP_condition_1 = [condition_1_animal_1_P, condition_1_animal_2_P, condition_1_animal_3_P] and  PP_condition_2 = [condition_2_animal_1_P, condition_2_animal_2_P, condition_2_animal_3_P] and call the function [H,P] = rollingbinTtest(PP_condition_1, PP_condition_2, winsize) where winsize specifies the window size for rolling bins. For e.g. winsize = 5 will perform t test (two tail, unequal variance) on PP_condition_1 and PP_condition_2 by comparing bins 1-5, 2-6, 3-7 and so on. 

