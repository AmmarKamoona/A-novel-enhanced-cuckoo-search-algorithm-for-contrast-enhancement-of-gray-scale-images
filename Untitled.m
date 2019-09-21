%This code to read the matfiles and arrange them for comparision for data
%presentation purpose

clc
clear

% Boy
HCSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessHCO_enhanced_boy with pa=0.25and pop=25.mat')));
ACSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessACS_enhanced_boy with pa=0.25and pop=25.mat')));
CSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessCS_enhanced_boy with pa=0.25and pop=25.mat')));
Boyfitness=[HCSfit;ACSfit;CSfit];
clear HCSfit ACSfit CSfit
% lady
HCSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessHCO_enhanced_lady with pa=0.25and pop=25.mat')));
ACSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessACS_enhanced_lady with pa=0.25and pop=25.mat')));
CSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessCS_enhanced_lady with pa=0.25and pop=25.mat')));
ladyfitness=[HCSfit;ACSfit;CSfit];
clear HCSfit ACSfit CSfit
% Einstien
HCSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessHCO_enhanced_Einstein with pa=0.25and pop=25.mat')));
ACSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessACS_enhanced_Einstein with pa=0.25and pop=25.mat')));
CSfit=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FitnessCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
Einstienfitness=[HCSfit;ACSfit;CSfit];

Fitcomp=[Boyfitness;ladyfitness;Einstienfitness];
save('fitnesscomparison.mat','Fitcomp');
%Egels
HCSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsHCO_enhanced_boy with pa=0.25and pop=25.mat')));
ACSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsACS_enhanced_boy with pa=0.25and pop=25.mat')));
CSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsCS_enhanced_boy with pa=0.25and pop=25.mat')));
BoyEgels=[HCSEge;ACSEge;CSEge];
clear HCSEge ACSEge CSEge
HCSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsHCO_enhanced_lady with pa=0.25and pop=25.mat')));
ACSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsACS_enhanced_lady with pa=0.25and pop=25.mat')));
CSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsCS_enhanced_lady with pa=0.25and pop=25.mat')));
ladyEgels=[HCSEge;ACSEge;CSEge];
clear HCSEge ACSEge CSEge
% Einstien
HCSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsHCO_enhanced_Einstein with pa=0.25and pop=25.mat')));
ACSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsACS_enhanced_Einstein with pa=0.25and pop=25.mat')));
CSEge=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EgelsCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
EinstienEgels=[HCSEge;ACSEge;CSEge];

Egecomp=[BoyEgels;ladyEgels;EinstienEgels];
save('Egelscomparison.mat','Egecomp');

%%Entropy
HCSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyHCO_enhanced_boy with pa=0.25and pop=25.mat')));
ACSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyACS_enhanced_boy with pa=0.25and pop=25.mat')));
CSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyCS_enhanced_boy with pa=0.25and pop=25.mat')));
BoyEntropy=[HCSentrop;ACSentrop;CSentrop];
clear HCSentrop ACSentrop CSentrop
HCSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyHCO_enhanced_lady with pa=0.25and pop=25.mat')));
ACSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyACS_enhanced_lady with pa=0.25and pop=25.mat')));
CSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyCS_enhanced_lady with pa=0.25and pop=25.mat')));
ladyEntropy=[HCSentrop;ACSentrop;CSentrop];
clear HCSentrop ACSentrop CSentrop
% Einstien
HCSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyHCO_enhanced_Einstein with pa=0.25and pop=25.mat')));
ACSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyACS_enhanced_Einstein with pa=0.25and pop=25.mat')));
CSentrop=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\EntropyCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
EinstienEntropy=[HCSentrop;ACSentrop;CSentrop];

Entropycomp=[BoyEntropy;ladyEntropy;EinstienEntropy];

%PSNR
HCSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRHCO_enhanced_boy with pa=0.25and pop=25.mat')));
ACSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRACS_enhanced_boy with pa=0.25and pop=25.mat')));
CSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRCS_enhanced_boy with pa=0.25and pop=25.mat')));
BoyPSNR=[HCSpsnr;ACSpsnr;CSpsnr];
clear HCSpsnr ACSpsnr CSpsnr
HCSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRHCO_enhanced_lady with pa=0.25and pop=25.mat')));
ACSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRACS_enhanced_lady with pa=0.25and pop=25.mat')));
CSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRCS_enhanced_lady with pa=0.25and pop=25.mat')));
ladyPSNR=[HCSpsnr;ACSpsnr;CSpsnr];
clear HCSpsnr ACSpsnr CSpsnr
% Einstien
HCSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRHCO_enhanced_Einstein with pa=0.25and pop=25.mat')));
ACSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRACS_enhanced_Einstein with pa=0.25and pop=25.mat')));
CSpsnr=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\PSNRCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
EinstienPSNR=[HCSpsnr;ACSpsnr;CSpsnr];

PSNRcomp=[BoyPSNR;ladyPSNR;EinstienPSNR];
save('PSNRcomparison.mat','PSNRcomp');
save('Entropycomparison.mat','Entropycomp');

%%FSIM
HCSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMHCO_enhanced_boy with pa=0.25and pop=25.mat')));
ACSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMACS_enhanced_boy with pa=0.25and pop=25.mat')));
CSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMCS_enhanced_boy with pa=0.25and pop=25.mat')));
BoyFSIM=[HCSFSIM;ACSFSIM;CSFSIM];
clear HCSFSIM ACSFSIM CSFSIM
HCSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMHCO_enhanced_lady with pa=0.25and pop=25.mat')));
ACSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMACS_enhanced_lady with pa=0.25and pop=25.mat')));
CSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMCS_enhanced_lady with pa=0.25and pop=25.mat')));
ladyFSIM=[HCSFSIM;ACSFSIM;CSFSIM];
clear HCSFSIM ACSFSIM CSFSIM
% Einstien
HCSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMHCO_enhanced_Einstein with pa=0.25and pop=25.mat')));
ACSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMACS_enhanced_Einstein with pa=0.25and pop=25.mat')));
CSFSIM=cell2mat(struct2cell(load('F:\Major_research_backup\final_image_enhancement\range6\processed_images\FSIMCS_enhanced_Einstein with pa=0.25and pop=25.mat')));
EinstienFSIM=[HCSFSIM;ACSFSIM;CSFSIM];

FSIMcomp=[BoyFSIM;ladyFSIM;EinstienFSIM];
save('FSIMcomparison.mat','FSIMcomp');




