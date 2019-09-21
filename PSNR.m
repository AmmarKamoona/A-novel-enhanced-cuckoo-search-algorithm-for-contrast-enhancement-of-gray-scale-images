function [OUT ] = PSNR(distImg,origImg)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

% origImg = imread ('');
% distImg= imread ('');
origImg = double(origImg);
distImg = double(distImg);

[M N] = size(origImg);
error = origImg - distImg;
MSE = sum(sum(error .* error)) / (M * N);
if(MSE > 0)
OUT = 10*log(255*255/MSE) / log(10);
else
OUT= 99;
end 

end

