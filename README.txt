
[Introduction]
square_root_PMM version 1.0: 
A MATLAB software for square-root regression problems. 
Copyright (c) 2021 by Peipei Tang, Chengjing Wang, Defeng Sun, and Kim-Chuan Toh. 

This is software package for solving the square-root regression problem:  
min{ \|X\beta-b\|_{2}+\lambda p(\beta)-q(\beta)} 
A sparse semismooth Newton based proximal majorization-minimization algorithm is 
used to solve this problem; details can be found in the following 
reference: 

[Reference]
 Peipei Tang, Chengjing Wang, Defeng Sun, and Kim-Chuan Toh, 
 A Sparse Semismooth Newton Based Proximal Majorization-Minimization Algorithm for 
 Nonconvex Square-Root-Loss Regression Problems, 
 Journal of Machine Learning Research 21(226):1--38, 2020. 

[Copyright] 
See Copyright.txt

--------------------------------------------------------------
[Installation] Run MATALB in the directory square_root_PMM, then type: 

>> startup 

After that, to see whether you have installed the software 
correctly, type the following in MATLAB: 

>> square_root_demo
--------------------------------------------------------------