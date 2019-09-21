function [new_nest,Fitness]=search_around(nest,fitness,Lb,Ub,A,m,snd)
GM=mean(A(:));
n=size(nest,1);
para_index=size(nest,2);
for i=1:n
     
     %generating the random parameter index 
     j=randi(para_index,1);
     %generating a randomly selected solution Xk from the solutions,popsize the number of
     %population
     Xk=randi(n,1);
        
     while (Xk==i)
            Xk=randi(n,1);
     end

        
     % generating o which is random number between [-1,1]
        O=(rand-0.5)*2*1;
     % genrate new solution        
        modifPos=nest(i,j)+O*(nest(i,j)-nest(Xk,j));
        new=nest(i,:);
        new(j)=modifPos;
        % ensure the limit of new solution
         new=simplebounds(new,Lb,Ub);
%        new=correctbound(new,Lb,Ub);
%       %find the fittness of new solution
        
        G=trasform(A,GM,snd,m,new);
%         evFit=test_functions(new,fc,nd);
        evFit=fobj_test(G);
        %         %if the fitness of new solution is better than the old one then
%         %abndon the the old one
        if evFit>=fitness(i,1)
            nest(i,:)=new;
            fitness(i,1)=evFit;
        end
end
Fitness=fitness;
new_nest=nest;
end
