%This function is to find the objective funtion(fitness value) of the
%transformation 
function [out]=fobj_test(Ie)
% the class of input image is uint8
% global CI

% X = sob2(Ie,7);
% X=logical(edge(Ie,'canny'));
X=edge(Ie);
size(Ie(X));
E_Is=sum(Ie(X));
n_edgels=sum(sum(X));
[M, N]=size(Ie);

%Quick Entropy %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hx=entropy2(Ie);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

H=entropy(Ie);

% out=reallog(reallog(E_Is+exp(1)))*(n_edgels/(N*M))*exp(H);

% out=reallog(reallog(E_Is+exp(1)))*n_edgels;

% [Hx,MInf] = MI_GG2(Ie,CI)
% out=log(log(E_Is)*(n_edgels/(M*N))*Hx*log(MInf));
% -------------------------
% this one was uncomment
 out=log(log(E_Is+exp(1)))*(n_edgels/(N*M))*exp(H);
% -----------------------------------------
% out=reallog(reallog(E_Is+1))*(n_edgels/(M*N))*(Hx*MInf);


end
%return