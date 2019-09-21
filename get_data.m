% program to read a data form data file function.
% It also reads parameters from an input file

function  [Prob,number_pop]= get_data

% if you need to  the program asks about the name of data file uncomment 
% line 9 and comment line 10

% in_filename = input('Please type the input file name to read data\n','s');
in_filename='data.dat';
clc
str1 = strcat('.\Input_data\',in_filename); 
%Read the values of a and b from the input data file in_file1.dat
% fscanf reads column-wise, one column at a time 
fid = fopen(str1);
aa = fscanf(fid,'%f %f', [2,inf]);   % aa has 2 rows
aa = aa';                           % convert to 2 columns 
fclose(fid);                        % You MUST close the opened file.

Prob=aa(1); 
number_pop=aa(2); 
end
