# MOR
Model Order Reduction

Youn need the ToolBox sssMOR for Matlab
https://www.epc.ed.tum.de/rt/forschung/modellordnungsreduktion/software/sssmor/

Thanks to everyone who worked on the development of the sssMor Toolbox for Matlab


######################## PROBLEM DESCRIPTION ########################

WAFER LIKE STRUCTURE, 9 INPUTS OF POWER [W] PLACED ON THE WAFER, 5 OUTPUT POINT PROBES MESURING THE 
TEMPERATURE OF THE WAFER.

1 - Disc(9in5out).mph = COMSOL file\n/n
2 - Disc9_in5out.m = MATLAB file that solves the COMSOL model
3 - matrices.mat = file containing the state-space matrices of the COMSOL model extracted with 
    MATLAB
4 - sysSolver.m = MATLAB function to solve state-space systems
5 - Disc_9in5out_SYS.m = main file to solve the model and the reduced model



