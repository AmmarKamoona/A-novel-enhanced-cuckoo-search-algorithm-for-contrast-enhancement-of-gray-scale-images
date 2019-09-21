%% Empty nest
% Replace some nestd by construction new nests/solution 
%A fraction of worse nests are discovered with probablity pa
function [new_nest]=empty(nest,Lb,Ub,pa,best,fitness)
n=size(nest,1);
%discovered or not---a status vector
[fitness,loc]=sort(fitness);
%change it to make follow adaptive cuckoo
n=round(pa*n);
beta=3/2;
sigma=(gamma(1+beta)*sin(pi*beta/2)/(gamma((1+beta)/2)*beta*2^((beta-1)/2)))^(1/beta);

for j=1:n
    s=nest(loc(j),:);
    %For stnadard random walk use step=1
    %levy flight by Mantegna's algprithm
    u=randn(size(s))*sigma;
    v=randn(size(s));
    step=u./abs(v).^(1/beta);
    
    stepsize=0.01*step.*(s-best);
    % factor 0.01 comes from the fact that L/100 should be the typical step
    % size of walk,where L is the typical lenghtscale
    s=s+stepsize.*randn(size(s));
    
    nest(loc(j),:)=simplebounds(s,Lb,Ub);
end
new_nest=nest;
end
