%% demo of square_root_PMM for solving regularized square-root regression problems

clear all
HOME = pwd;
addpath(strcat(HOME,'/solver/'))
addpath(strcat(HOME,'/mexfun/'))
addpath(strcat(HOME,'/UCIdata'))

L1 = 1;
SCAD = 1;
MCP = 1;

%% Solve square-root Lasso problem 
%% P): min \|Ax-b\|+\lambda \|x\|_{1}
if L1
    rand('state',0);
    randn('state',0);
    m = 8000;
    n = 400;
    sigma = 15;
    X = mvnrnd(zeros(1,n),0.8.^toeplitz(0:n-1),m);
    beta0 = repmat([0;1;0;1],100,1);
    b = X*beta0 + sigma*normrnd(0,1,m,1);
    lambda = 1.1*norminv(1-0.05/(2*m));    
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-6;
    [obj,beta,runhist_I,runhist_II] = square_root_PMM(X,b,m,n,lambda,OPTIONS,'l1');
    clear obj beta X b m n lambda OPTIONS runhist_I runhist_II
end
if L1
    load mpg.scale.expanded7.mat
    [m,n] = size(X);
    lambda = 1.1*norminv(1-0.05/(2*m));
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-6;
    [obj,beta,runhist_I,runhist_II] = square_root_PMM(X,b,m,n,lambda,OPTIONS,'l1');
    clear obj beta A b m n lambda OPTIONS runhist_I runhist_II
end

%% Solve square-root problem with the SCAD regularization
%% P): min \|Ax-b\|+\lambda p(x)-q(x)
if SCAD
    rand('state',0);
    randn('state',0);
    m = 8000;
    n = 400;
    sigma = 15;
    X = mvnrnd(zeros(1,n),0.8.^toeplitz(0:n-1),m);
    beta0 = repmat([0;1;0;1],100,1);
    b = X*beta0 + sigma*normrnd(0,1,m,1);
    lambda = 1.1*norminv(1-0.05/(2*m))*0.230;
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-4;
    OPTIONS.tol_II = 1.0e-6;
    [obj,beta,runhist_I,runhist_II] = square_root_PMM(X,b,m,n,lambda,OPTIONS,'scad');
    clear obj beta X b m n lambda OPTIONS runhist_I runhist_II
end
if SCAD
    load mpg.scale.expanded7.mat
    [m,n] = size(X);
    lambda = 1.1*norminv(1-0.05/(2*m))*0.107;
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-4;
    OPTIONS.tol_II = 1.0e-6;
    [obj,beta,runhist_I,runhist_II]  = square_root_PMM(X,b,m,n,lambda,OPTIONS,'scad');
    clear obj beta X b m n lambda OPTIONS runhist_I runhist_II
end


%% Solve square-root problem with the MCP regularization
%% P): min \|Ax-b\|+\lambda p(x)-q(x)
if MCP
    rand('state',0);
    randn('state',0);
    m = 8000;
    n = 400;
    sigma = 15;
    X = mvnrnd(zeros(1,n),0.8.^toeplitz(0:n-1),m);
    beta0 = repmat([0;1;0;1],100,1);
    b = X*beta0 + sigma*normrnd(0,1,m,1); 
    lambda = 1.1*norminv(1-0.05/(2*m))*0.081;
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-4;
    OPTIONS.tol_II = 1.0e-6;
    [obj,beta,runhist_I,runhist_II]  = square_root_PMM(X,b,m,n,lambda,OPTIONS,'mcp');
    clear obj beta X b m n lambda OPTIONS runhist_I runhist_II
end
if MCP
    load mpg.scale.expanded7.mat
    [m,n] = size(X);
    lambda = 1.1*norminv(1-0.05/(2*m))*0.102;
    OPTIONS = set_parameters;
    OPTIONS.tol_I = 1.0e-4;
    OPTIONS.tol_II = 1.0e-6;
    [obj,beta,runhist_I,runhist_II]  = square_root_PMM(X,b,m,n,lambda,OPTIONS,'mcp');
    clear obj beta X b m n lambda OPTIONS runhist_I runhist_II
end
rmpath(strcat(HOME,'/solver/'))
rmpath(strcat(HOME,'/mexfun/'))
rmpath(strcat(HOME,'/UCIdata'))