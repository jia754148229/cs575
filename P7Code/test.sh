#!/bin/bash

#openmp,1&4 thread
g++ openmp.cpp -o prog -lm -fopenmp
./prog

#simd
g++ simd.cpp simd.p4.cpp -o prog -lm -fopenmp
./prog
#rm prog

#ssssss
g++ opencl.cpp  -o prog /usr/local/apps/cuda/cuda-10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
./prog
