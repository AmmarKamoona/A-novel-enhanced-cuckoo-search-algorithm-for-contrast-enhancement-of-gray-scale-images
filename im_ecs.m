% % This code to try implement the  gray level i mage enhancement using evloutionary
% % algorithm  Cuckoo search upadate 26 April 2016
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [fnewmax,best_nest_max,fitconveg]=im_ecs(im_num,Max_iter) 
close all
clc
if im_num==1
image_name=('lena');
elseif im_num==2
image_name=('cameraman');
elseif im_num==3
image_name=('clock');
elseif im_num==4
image_name=('Aeroplane'); 
elseif im_num==5
image_name=('Spine');
elseif im_num==6
image_name=('Peppers');
elseif im_num==7
image_name=('boy');  
elseif im_num==8
image_name=('lady');
elseif im_num==9
image_name=('clock');
elseif im_num==10
image_name=('galaxy');
elseif im_num==11
image_name=('Spine');  
elseif im_num==12
image_name=('Aeroplane');
elseif im_num==13
image_name=('skeleton');
end
% inputimage=rgb2gray(inputimage); 

L=1;
% Concatenate(combine) the two string together 
str1 = strcat('.\input_images\',image_name);

str2 = strcat(str1,'.tif');
inputimage =imread(str2) ;
% inputimage=imadjust(inputimage);
gray_image=double(inputimage);

% extract the number of rows M and coloums N 
[M N]=size(gray_image);

GM=mean(gray_image(:));% finding the globel mean GM
window_size=3;         %the window size is 3*3 
 
m=zeros(M,N);          % create a matrix for the local mean of the pixels

%%% calculating the mean of the image m over window size 
m=colfilt(gray_image,[window_size window_size],'sliding',@mean);
%Calculating the local standard deviation over window for whole the image
%call a function stnd
% snd=stnd(grayimage);
% snd=colfilt(gray_image,[n n],'sliding',@std);
snd=stdfilt(gray_image);

   %%%%%%%%%%%%%%%%cucckoo algorithm start from here%%%%%%%%%%%%%%
   

% The limit of the avariable a,b,c,k are
% 0<a<1.5,        0<c<1              0.5<k<1.5
% while b can be taken      1<b<GM/2 or 0<b<0.5
Lb=[0,GM/2,0,0.5];                  
Ub=[1.5,GM,1,1.5];
% The parameters of cuckoo search algorithm
%read the  cuckoo search paramerts from data files
[pa,pop]=get_data;

%  pop=25;    % Number of Cuckoos or host nests
%  pa=0.01;   % Discovery rate of alien eggs
%---------parameters end

% L=10;         %the number of independent run
bestN=zeros(L,4); % the number 4 is the number of the parameters a,b,c,k
Nu_it=zeros(L,1);
Tot_time=zeros(L,1);
nest=[];
fitconveg=[];
%%%% Cuckoo search independent runs starts form here
for r=1:L
    tic
    % Random initialization the nests
    for i=1:pop
       nest(i,:)=Lb+(Ub-Lb).*rand(size(Lb));
    end
    
    % Get the current best
    fitness=zeros(pop,1);
    [fmax,bestnest,nest,fitness]=get_best_nest(nest,nest,fitness,gray_image,m);
    N_iter=0;
    iter=1; 
%     Max_iter=25;     % Number of iteration
%     MET=3;           %if we need to use normal cuckoo search MET=1
    
    % cuckoo  iterations start here
    while (iter<=Max_iter)
    % Generate new solutions (but keep the current best)
    
        new_nest=get_cuckoos(nest,bestnest,Lb,Ub); % Standard CS
        loga='ECS';
        
    
       [fnew,best,nest,fitness]=get_best_nest(nest,new_nest,fitness,gray_image,m);
       % Update the Counter
       N_iter=N_iter+pop;
       %Search around solutions
       [nest,fitness]=search_around(nest,fitness,Lb,Ub,gray_image,m,snd);
%      Discovery and randomization
       new_nest=empty_nests(nest,Lb,Ub,pa);
        
     
       %evaluate the new set of solutions
       [fnew,best,nest,fitness]=get_best_nest(nest,new_nest,fitness,gray_image,m);
       %update the new counter again
       N_iter=N_iter+pop;
       
       %find the best objective so far
       if fnew>fmax
        fmax=fnew;
        bestnest=best;
       end
       
       % collect the fittness values over iteration and runs for
       % convergence plot
       fitconveg(r,iter)=fmax;
       iter=iter+1;
    end
    %  cuckoo search iteration end here------------
    
    % The best (max) value for the function
    fmax
    % The best nest value for the function
    bestnest
    Bestfmax(r,1)=fmax;
    Tot_time(r)=toc;
    bestN(r,:)=bestnest;
    Nu_it(r)=N_iter;
    
    
 end

%%% The final image for the best nest so far
[fnewmax,k]=max(Bestfmax);
 best_nest_max=bestN(k,:);

enhance_image=trasform(gray_image,GM,snd,m,best_nest_max);
enhace_image2=imadjust(inputimage);
enhance_image=(enhance_image+enhace_image2)./2;
%%%%%% find the histogram equalization of the image
enhance1=histeq(inputimage);
%%%% Display the images
figure(2),subplot(2,2,1),imshow(inputimage);title('The original image')
figure(2),subplot(2,2,2),imshow(enhance_image);title(loga)
figure(2),subplot(2,2,3),imshow(enhance1);title('Historgam equalization')
figure(3),subplot(2,2,1),imhist(inputimage);title('The original image')
figure(3),subplot(2,2,2),imhist(enhance_image);title(loga)
figure(3),subplot(2,2,3),imhist(enhance1);title('Historgam equalization')
%%%% calculating the merit of the enhanced image over L independent runs
entrop_runs=zeros(L,1);
PSNR_runs=zeros(L,1);
n_edges_runs=zeros(L,1);
fitness_runs=zeros(L,1);
AMBE_runs=zeros(L,1);
for r=1:L
enhance_para= bestN(r,:);
image1=trasform(gray_image,GM,snd,m,enhance_para);
enhace_image2=imadjust(inputimage);
image1=(image1./2+enhace_image2./2);
entrop_runs(r,1)=entropy(image1);
PSNR_runs(r,1)=PSNR(image1,inputimage);
edge_image1=edge(image1,'sobel');
n_edges_runs(r,1)=sum(edge_image1(:));
%call a function dsim to find the Absolute mean Brightness error
AMBE_runs(r,1)=AMBE(image1,inputimage);
end


%%creating file name for files before writing them
string1=num2str(pa);
string2=num2str(pop);
string3=image_name;
str1= strcat(loga,'_enhanced_',string3);
str2=strcat(' with pa=',string1,'and pop=',string2);
final_string=strcat(str1,str2);

Currend_Folder=pwd;
%%%%%%% entropy best,worst,median ,mean and STD
Best_entropy=max(entrop_runs);
Worst_entropy=min(entrop_runs);
Median_enropy=median(entrop_runs);
mean_entropy=mean(entrop_runs);
STD_entropy=std(entrop_runs);
filename=[Currend_Folder,'\processed_images\','Entropy',final_string,'.mat'];
entropy_matrix=[Best_entropy,Worst_entropy,Median_enropy,mean_entropy,STD_entropy];
save(filename,'entropy_matrix')

%%%%%%
Best_PSNR=max(PSNR_runs);
Worst_PSNR=min(PSNR_runs);
Median_PSNR=median(PSNR_runs);
mean_PSNR=mean(PSNR_runs);
STD_PSNR=std(PSNR_runs);
PSNR_merit=[Best_PSNR,Worst_PSNR,Median_PSNR,mean_PSNR,STD_PSNR];
filename=[Currend_Folder,'\processed_images\','PSNR',final_string,'.mat'];
save(filename,'PSNR_merit')

%%%edgels calculatation
Best_egels=max(n_edges_runs);
Worst_egels=min(n_edges_runs);
Medina_egels=median(n_edges_runs);
mean_egels=mean(n_edges_runs);
STD_egels=std(n_edges_runs);
edgels_matrix=[Best_egels,Worst_egels,Medina_egels,mean_egels,STD_egels];
filename=[Currend_Folder,'\processed_images\','Egels',final_string,'.mat'];
save(filename,'edgels_matrix');
%%% FSIM 
Best_AMBE=max(AMBE_runs);
Worst_AMBE=min(AMBE_runs);
Median_AMBE=median(AMBE_runs);
mean_AMBE=mean(AMBE_runs);
STD_AMBE=std(AMBE_runs);
AMBE_vector=[Best_AMBE,Worst_AMBE,Median_AMBE,mean_AMBE,STD_AMBE];
filename=[Currend_Folder,'\processed_images\','AMBE',final_string,'.mat'];
save(filename,'AMBE_vector');

%%%% Fintenss
Best_fitness=max(Bestfmax);
Worst_fitness=min(Bestfmax);
Median_fitness=median(Bestfmax);
mean_fitness=mean(Bestfmax);
StD_fitness=std(Bestfmax);
Fitness=[Best_fitness Worst_fitness Median_fitness mean_fitness StD_fitness];
filename=[Currend_Folder,'\processed_images\','Fitness',final_string,'.mat'];
save(filename,'Fitness')
 
%save converg fitness file
mean_time=mean(Tot_time);
filename=[Currend_Folder,'\processed_images\','Mean_time',final_string,'.mat'];
save(filename,'mean_time')

final_string=strcat(str1,str2);
congergname=strcat('converfitness',final_string,'.mat');
save(congergname,'fitconveg');
%%%% writing the enhanced image in output folder called"processed_images"
modi_image= sprintf('.\\Processed_images\\%s.jpg',final_string);
imwrite(enhance_image, modi_image);

% %%%% writing the data into data file
% %string assignement
% format_spec = '.\\processed_images\\%s_enanhced_%s_with pa_%s_and pop=_%d.dat';
% out_filename = sprintf(format_spec,loga,string3,string1,pop);
% % Wites into the output file
% fid = fopen(out_filename,'w');
% fprintf(fid,'%6s %6s %6s %6s %6s\n','mean_entropy','mean_egels','mean_PSNR','mean_FSIM','mean_fitness');
% fprintf(fid,'%12.4f %12.4E %12.4f %12.4f %12.4f\n',mean_entropy,mean_egels,mean_PSNR,mean_FSIM,mean_fitness);
% fclose(fid);
end