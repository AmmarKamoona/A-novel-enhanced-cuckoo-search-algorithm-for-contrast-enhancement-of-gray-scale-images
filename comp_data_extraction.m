%This code to read the matfiles and arrange them for comparision for data
%presentation purpose

clc
clear
%please change the folder directly to current directory 
Current_dir=pwd;
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_rocket with pa=0.25and pop=25.mat');
% rocket
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_rocket with pa=0.25and pop=25.mat')));
rocketfitness=[v2fit];
clear  v2fit CSfit
% einstein_orig
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origfitness=[v2fit];
clear  v2fit CSfit
% einstein
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_einstein with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
einsteinfitness=[v2fit];
clear  v2fit CSfit
% Cell
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_Cell with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_Cell with pa=0.25and pop=25.mat')));
Cellfitness=[v2fit];
clear v2fit CSfit
%Cameraman
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
Cameramanfitness=[v2fit];
clear v2fit CSfit
%Hut
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_hut with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
hutfitness=[v2fit];
clear v2fit CSfit
%Boy
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_boy with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
boyfitness=[v2fit];
clear v2fit CSfit
%lay
filepath=strcat(pwd,'\processed_images\FitnessECS_enhanced_lady with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
ladyfitness=[v2fit];
clear v2fit CSfit
Fitcomp=[rocketfitness;einstein_origfitness;einsteinfitness;Cellfitness;Cameramanfitness;hutfitness;boyfitness;ladyfitness];
save('fitnesscomparison.mat','Fitcomp');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Egels
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_rocket with pa=0.25and pop=25.mat');

v2Ege=cell2mat(struct2cell(load(filepath)));
rocketEgels=[v2Ege];
clear  v2Ege CSEge
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
% CSEge=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\EgelsCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origEgels=[v2Ege];
clear HCSEge v2Ege CSEge
% einstein
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_einstein with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
einsteinEgels=[v2Ege];
clear HCSEge v2Ege CSEge
% Cell
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_Cell with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
CellEgels=[v2Ege];
clear HCSEge v2Ege CSEge
%Cameraman
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
camaramanEgels=[v2Ege];
%hut
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_hut with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
hutEgels=[v2Ege];
%boy
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_boy with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
boyEgels=[v2Ege];
%lady
filepath=strcat(pwd,'\processed_images\EgelsECS_enhanced_lady with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
ladyEgels=[v2Ege];

Egecomp=[rocketEgels;einstein_origEgels;einsteinEgels;CellEgels;camaramanEgels;hutEgels;boyEgels;ladyEgels];
save('Egelscomparison.mat','Egecomp');
%--------------------------------------------------------------------------
%%Entropy
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_rocket with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
rocketEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
% CSentrop=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\EntropyCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_einstein with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));

einsteinEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%Cell
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_Cell with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));

CellEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%cameraman
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
cameramanEntropy=[v2entrop];
%hut
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_hut with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
hutEntropy=[v2entrop];
%boy
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_boy with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
boyEntropy=[v2entrop];
%lady
filepath=strcat(pwd,'\processed_images\EntropyECS_enhanced_lady with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
ladyEntropy=[v2entrop];
clear v2entrop

Entropycomp=[rocketEntropy;einstein_origEntropy;einsteinEntropy;CellEntropy;cameramanEntropy;hutEntropy;boyEntropy;ladyEntropy];
save('Entropycomparison.mat','Entropycomp');
%PSNR
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_rocket with pa=0.25and pop=25.mat');

v2psnr=cell2mat(struct2cell(load(filepath)));
rocketPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
einstein_origPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
% einstein
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_einstein with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
einsteinPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
% Cell
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_Cell with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));

CellPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
%camerman
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
camermanPSNR=[v2psnr];
%hut
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_hut with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
hutPSNR=[v2psnr];
%boy
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_boy with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
boyPSNR=[v2psnr];
%lady
filepath=strcat(pwd,'\processed_images\PSNRECS_enhanced_lady with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
ladyPSNR=[v2psnr];

PSNRcomp=[rocketPSNR;einstein_origPSNR;einsteinPSNR;CellPSNR;camermanPSNR;hutPSNR;boyPSNR;ladyPSNR];
save('PSNRcomparison.mat','PSNRcomp');

%---------------------------------------------------------------------
%%FSIM
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_rocket with pa=0.25and pop=25.mat');

v2FSIM=cell2mat(struct2cell(load(filepath)));
rocketFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));

einstein_origFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
% einstein
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_einstein with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
einsteinFSIM=[v2FSIM];

clear HCSFSIM v2FSIM CSFSIM
%Cell
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_Cell with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));

CellFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
%cameraman
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
cameramanFSIM=[v2FSIM];
%hut
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_hut with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
hutFSIM=[v2FSIM];
%Boy
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_boy with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
boyFSIM=[v2FSIM];
%Lady
filepath=strcat(pwd,'\processed_images\FSIMECS_enhanced_lady with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
ladyFSIM=[v2FSIM];

FSIMcomp=[rocketFSIM;einstein_origFSIM;einsteinFSIM;CellFSIM;cameramanFSIM;hutFSIM;boyFSIM;ladyFSIM];
save('FSIMcomparison.mat','FSIMcomp');
%%%%%%%%%%%%%%%FOR Cuckoo search Start here
clc
clear
%%%%%%%%%%%%%%%
%please change the folder directly to current directory 
Current_dir=pwd;
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_rocket with pa=0.25and pop=25.mat');
% rocket
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_rocket with pa=0.25and pop=25.mat')));
rocketfitness=[v2fit];
clear  v2fit CSfit
% einstein_orig
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origfitness=[v2fit];
clear  v2fit CSfit
% einstein
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_einstein with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
einsteinfitness=[v2fit];
clear  v2fit CSfit
% Cell
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_Cell with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_Cell with pa=0.25and pop=25.mat')));
Cellfitness=[v2fit];
clear v2fit CSfit
%Cameraman
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
Cameramanfitness=[v2fit];
clear v2fit CSfit
%Hut
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_hut with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
hutfitness=[v2fit];
clear v2fit CSfit
%Boy
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_boy with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
boyfitness=[v2fit];
clear v2fit CSfit
%lay
filepath=strcat(pwd,'\processed_images\FitnessCS_enhanced_lady with pa=0.25and pop=25.mat');
v2fit=cell2mat(struct2cell(load(filepath)));
% CSfit=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\FitnessCS_enhanced_cameraman with pa=0.25and pop=25.mat')));
ladyfitness=[v2fit];
clear v2fit CSfit
Fitcomp=[rocketfitness;einstein_origfitness;einsteinfitness;Cellfitness;Cameramanfitness;hutfitness;boyfitness;ladyfitness];
save('fitness_CS_comparison.mat','Fitcomp');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Egels
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_rocket with pa=0.25and pop=25.mat');

v2Ege=cell2mat(struct2cell(load(filepath)));
rocketEgels=[v2Ege];
clear  v2Ege CSEge
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
% CSEge=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\EgelsCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origEgels=[v2Ege];
clear HCSEge v2Ege CSEge
% einstein
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_einstein with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
einsteinEgels=[v2Ege];
clear HCSEge v2Ege CSEge
% Cell
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_Cell with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
CellEgels=[v2Ege];
clear HCSEge v2Ege CSEge
%Cameraman
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
camaramanEgels=[v2Ege];
%hut
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_hut with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
hutEgels=[v2Ege];
%boy
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_boy with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
boyEgels=[v2Ege];
%lady
filepath=strcat(pwd,'\processed_images\EgelsCS_enhanced_lady with pa=0.25and pop=25.mat');
v2Ege=cell2mat(struct2cell(load(filepath)));
ladyEgels=[v2Ege];

Egecomp=[rocketEgels;einstein_origEgels;einsteinEgels;CellEgels;camaramanEgels;hutEgels;boyEgels;ladyEgels];
save('Egels_CS_comparison.mat','Egecomp');
%--------------------------------------------------------------------------
%%Entropy
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_rocket with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
rocketEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
% CSentrop=cell2mat(struct2cell(load('F:\Work1\Matlab\Thesis_included\new_test_image\version_2\processed_images\EntropyCS_enhanced_einstein_orig with pa=0.25and pop=25.mat')));
einstein_origEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_einstein with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));

einsteinEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%Cell
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_Cell with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));

CellEntropy=[v2entrop];
clear HCSentrop v2entrop CSentrop
%cameraman
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
cameramanEntropy=[v2entrop];
%hut
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_hut with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
hutEntropy=[v2entrop];
%boy
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_boy with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
boyEntropy=[v2entrop];
%lady
filepath=strcat(pwd,'\processed_images\EntropyCS_enhanced_lady with pa=0.25and pop=25.mat');
v2entrop=cell2mat(struct2cell(load(filepath)));
ladyEntropy=[v2entrop];
clear v2entrop

Entropycomp=[rocketEntropy;einstein_origEntropy;einsteinEntropy;CellEntropy;cameramanEntropy;hutEntropy;boyEntropy;ladyEntropy];
save('Entropy_CS_comparison.mat','Entropycomp');
%PSNR
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_rocket with pa=0.25and pop=25.mat');

v2psnr=cell2mat(struct2cell(load(filepath)));
rocketPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
einstein_origPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
% einstein
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_einstein with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
einsteinPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
% Cell
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_Cell with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));

CellPSNR=[v2psnr];
clear HCSpsnr v2psnr CSpsnr
%camerman
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
camermanPSNR=[v2psnr];
%hut
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_hut with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
hutPSNR=[v2psnr];
%boy
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_boy with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
boyPSNR=[v2psnr];
%lady
filepath=strcat(pwd,'\processed_images\PSNRCS_enhanced_lady with pa=0.25and pop=25.mat');
v2psnr=cell2mat(struct2cell(load(filepath)));
ladyPSNR=[v2psnr];

PSNRcomp=[rocketPSNR;einstein_origPSNR;einsteinPSNR;CellPSNR;camermanPSNR;hutPSNR;boyPSNR;ladyPSNR];
save('PSNR_CS_comparison.mat','PSNRcomp');

%---------------------------------------------------------------------
%%FSIM
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_rocket with pa=0.25and pop=25.mat');

v2FSIM=cell2mat(struct2cell(load(filepath)));
rocketFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_einstein_orig with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));

einstein_origFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
% einstein
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_einstein with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
einsteinFSIM=[v2FSIM];

clear HCSFSIM v2FSIM CSFSIM
%Cell
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_Cell with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));

CellFSIM=[v2FSIM];
clear HCSFSIM v2FSIM CSFSIM
%cameraman
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_cameraman with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
cameramanFSIM=[v2FSIM];
%hut
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_hut with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
hutFSIM=[v2FSIM];
%Boy
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_boy with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
boyFSIM=[v2FSIM];
%Lady
filepath=strcat(pwd,'\processed_images\FSIMCS_enhanced_lady with pa=0.25and pop=25.mat');
v2FSIM=cell2mat(struct2cell(load(filepath)));
ladyFSIM=[v2FSIM];

FSIMcomp=[rocketFSIM;einstein_origFSIM;einsteinFSIM;CellFSIM;cameramanFSIM;hutFSIM;boyFSIM;ladyFSIM];
save('FSIMCScomparison.mat','FSIMcomp');



