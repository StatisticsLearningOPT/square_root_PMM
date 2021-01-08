%%*********************************************************************
%% maxitersub = maximum number of semismooth Newton iterations for solving
%%              each proximal subproblem
%% tolsub     = tolerance of each subproblem
%% maxiter_I  = maximum number of iteration for Step 1
%% maxiter_II = maximum number of iteration for Step 2
%% sig_ini_1  = initial value of sig for Step 1
%% tau_ini_1  = initial value of tau for Step 1
%% sig_ini_2  = initial value of sig for Step 2
%% tau_ini_2  = initial value of tau for Step 2
%% sig_target_1  = minimum value of sig for Step 1
%% tau_target_1  = minimum value of tau for Step 1
%% sig_target_2  = minimum value of sig for Step 2
%% tau_target_2  = minimum value of tau for Step 2
%% tol_I      = the KKT tolerance of Step 1
%% tol_II     = the KKT tolerance of Step 2
%% printsub   = print switch of each subproblem
%% a          = paremeter of the regularizer SCAD or MCP
%%*********************************************************************

function OPTIONS = set_parameters

OPTIONS.maxitersub = 100;
OPTIONS.tolsub = 1.0e-6;
OPTIONS.maxiter_I = 1000;
OPTIONS.maxiter_II = 1000;
OPTIONS.sig_ini_1 = 0.1;
OPTIONS.tau_ini_1 = 0.1;
OPTIONS.sig_ini_2 = 0.1;
OPTIONS.tau_ini_2 = 0.1;
OPTIONS.sig_target_1 = 1.0e-7;
OPTIONS.tau_target_1 = 1.0e-12;
OPTIONS.sig_target_2 = 1.0e-7;
OPTIONS.tau_target_2 = 1.0e-12;
OPTIONS.tol_I = 1.0e-4;
OPTIONS.tol_II = 1.0e-6;
OPTIONS.printsub = 1;
OPTIONS.a = 3.7;
%%*********************************************************************
