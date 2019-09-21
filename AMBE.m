function [ out ] = AMBE(Ie,original_image)
%This function is used to calculate absolute mean britness error
%AMBE=abs(Me-Mo)
% where Me:mean intensity of enhanced image
% M0=mean intensity of original iamge
Me= mean(Ie(:));
MO=mean(original_image(:));
out=abs(Me-MO);
end

