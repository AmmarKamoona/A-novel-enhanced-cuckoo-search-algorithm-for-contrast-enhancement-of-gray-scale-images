% GET CUCKOO using standard random walk cuckoo search algorithm 
% Cuckoos Levy flight
function nest=get_cuckoos(nest,best,Lb,Ub)
% Levy flights
n=size(nest,1);
% Levy exponent and coefficients see equation 2.21 of the book
%X.S.Yang,Nature-Inspired Metaheuristic Algorithm,2nd,Luniver press 2010
beta=3/2;
sigma=(gamma(1+beta)*sin(pi*beta/2)/(gamma((1+beta)/2)*beta*2^((beta-1)/2)))^(1/beta);

for j=1:n
    s=nest(j,:);
    %For stnadard random walk use step=1
    %levy flight by Mantegna's algprithm
    u=randn(size(s))*sigma;
    v=randn(size(s));
    step=u./abs(v).^(1/beta);
    
    stepsize=0.01*step.*(s-best);
    % factor 0.01 comes from the fact that L/100 should be the typical step
    % size of walk,where L is the typical lenghtscale
    s=s+stepsize.*randn(size(s));
    
    nest(j,:)=simplebounds(s,Lb,Ub);
end
end