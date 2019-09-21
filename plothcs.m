 
clear
clc
Max_iter=25; 
for i=9:13
%       [fnewmax1,best_nest_max1,fitconveg1]=im_ecs(i,Max_iter);
%     [fnewmax2,best_nest_max2,fitconveg2]=im_acs(i,Max_iter);
      [fnewmax3,best_nest_max3,fitconveg3]=im_cs(i,Max_iter);
%  
%   
%    fitveg1(i,:)=mean(fitconveg1);
%    fitveg2(i,:)=mean(fitconveg2);
%    fitveg3(i,:)=mean(fitconveg3);
% 
%       
% 
% 
% close all
% %  plot the convergence of the function
% if i==1
% image_name=('lady');
% elseif i==2
% image_name=('boy');
% elseif i==3
% image_name=('einstein');
% elseif i==4
% image_name=('hut'); 
% elseif i==5
% image_name=('cameraman');   
% end
%  
%    name_title=strcat(image_name,' image fitness convergence');
%    figure(i),title('fitness')
%    semilogy(fitveg1(i,:),'-k','LineWidth',2);
%    hold on
%    semilogy(fitveg2(i,:),':k');
%    hold on
%    semilogy(fitveg3(i,:),'--k');
%    legend('HCS','ACS','CS');
%    title(name_title)
%    hold on
%    xlabel('Iteration')
%    ylabel('Fitness')
% %  axis([0 Max_iter Ymin Ymax])
%    %saving the plot
%    Fig=figure(i);
%    
%    Filename=name_title;
%    
%    print(Fig,Filename,'-dpng')
% %  clear BestChart1 BestChart2 BestChart3 bestNest1 bestNest2 bestNest3 
end