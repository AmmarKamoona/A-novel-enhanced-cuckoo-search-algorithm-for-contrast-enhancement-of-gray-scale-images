%% Empty nest
% Replace some nestd by construction new nests/solution 
%A fraction of worse nests are discovered with probablity pa
function new_nest=empty_nests(nest,Lb,Ub,pa)
n=size(nest,1);
%discovered or not---a status vector
K=rand(size(nest))>pa;
%In real world,if cuckoo's egg is very similar to a host egg then this
%cuckoo is very likely to be discovered,thus the fitness should be related
%to the difference in solutions.
stepsize=rand*(nest(randperm(n),:)-nest(randperm(n),:));
new_nest=nest+stepsize.*K;
for j=1:size(new_nest,1)
    s=new_nest(j,:);
    new_nest(j,:)=simplebounds(s,Lb,Ub);
end