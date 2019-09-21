% This program is to calculate the local standard deviation  of the 
% image(your image) over a window size n*n. 
% Copyright@2016 AMMAR KAMOONA

function standardDeviationImage=stnd(yourimage)


% convert your image to class double
yourimage = double(yourimage);

% Output image is the variance of the input image in a 3 by 3 sliding window.
VarianceFilterFunction = @(x) var(x(:));
varianceImage = nlfilter(yourimage, [3 3], VarianceFilterFunction);

% Compute the square root of the variance image to get the standarddeviation.
standardDeviationImage = sqrt(varianceImage);
end 