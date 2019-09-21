%% Simplebound ( To maintion the boundary of search space)
% why dont make the initilization more random ranther than limit it to bound
function s=simplebounds(s,Lb,Ub)
%apply the lower bound
ns_tmp=s;
I=ns_tmp<Lb;
ns_tmp(I)=Lb(I);
%apply the upper bound
J=ns_tmp>Ub;
ns_tmp(J)=Ub(J);
s=ns_tmp;


end