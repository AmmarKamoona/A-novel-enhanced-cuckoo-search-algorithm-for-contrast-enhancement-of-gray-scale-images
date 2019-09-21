% this program to find the objective function of the enhanced image 
%using the equation in used in the papaer Gray level image enhancement
%by particle swarm optimization Apurba and Ashish 2009
% Copyright AMMAR KAMOONA @2016

function f=ofun(G)
% G is the enhanced image
%using function evol to find the number
%type your objectiove function
[HI,NI,EI]=evol(G);
[M N]=size(G);

%Hint thers is some difference in computing the log using MATLAb and
%calculator
f=log(log(EI))*((NI*HI)/(M*N));
%There is no constrains on the objective function
%Therefor, there is no penalty
end