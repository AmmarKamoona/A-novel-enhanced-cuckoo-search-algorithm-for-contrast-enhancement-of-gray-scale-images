%This function is to find the best_nest in cuckoo search algorithm based on
%the cuckoo search algorihtm copyright@ammar kamoona 2016

function [fmax,best,nest,fitness]=get_best_nest(nest,newnest,fitness,A,m)
% extracting information from the image

% Hint you can put GM and snd as input for the function to reduce the time
GM=mean(A(:));% finding the globel mean GM
% snd=stnd(A);

% snd=colfilt(A,[n n],'sliding',@std);
snd=stdfilt(A);

% Evaluating all new solutions
for j=1:size(nest,1)
    
  para=newnest(j,:);
  % find the new image using the trasnformation function   
  G=trasform(A,GM,snd,m,para);      
      
  %calculating the objective function
  %call 
%   fnew=ofun(G);
  fnew=fobj_test(G);
  
      if fnew>=fitness(j,1)
        fitness(j,1)=fnew;
        nest(j,:)=newnest(j,:);
      end
end
[fmax,K]=max(fitness);
best=nest(K,:);
end