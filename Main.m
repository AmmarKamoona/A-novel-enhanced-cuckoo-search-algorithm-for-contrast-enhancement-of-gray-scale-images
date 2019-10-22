% This code is the implementation of the paper appeared in Applied Soft Computing journal 
% Written by Ammar Kamoona@2017
%Pleas cite when you use the code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Please use the following citation 
%@article{kamoona2019novel,
%title={A novel enhanced cuckoo search algorithm for contrast enhancement of gray scale images},
%author={Kamoona, Ammar Mansoor and Patra, Jagdish Chandra},
%journal={Applied Soft Computing},
%pages={105749},
%year={2019},
%publisher={Elsevier}
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% How to use the code is very simple 
% by specifying the image ID and number of iteration 
clear
clc
Max_iter=20; 
for i=1:13
    %uncomment the following for the proposed enhanced cuckoo search using proposed range
      [fnewmax1,best_nest_max1,fitconveg1]=im_ecs(i,Max_iter);
end
