%%% this function generate new enhanced image based on the transformation
%%% function the function has been tested on 3*3 and 5*5 example and shows
%%% a right answer.ammarkamoona 2016

function new_image=trasform(input_image,GM,snd,m,parameters)

a=parameters(1,1);b=parameters(1,2);c=parameters(1,3);k=parameters(1,4);
[M N]=size(input_image);
NUMERATOR=(k*GM);

Denom=snd+b;
G=(NUMERATOR./Denom).*(input_image-(c.*m))+m.^a;
G=uint8(G);

new_image=G;
end