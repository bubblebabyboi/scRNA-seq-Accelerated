# Single Cell RNA Sequencing Acceleration with FPGA

This repo seeks to speed up the single cell RNA sequencing pipeline using FPGA acceleration. 
Single cell RNA sequencing is a powerful tool for understanding the transcriptome of individual cells.
However, the computational cost of analyzing single cell RNA sequencing data is high, and the analysis can be time-consuming. 

The main bottleneck in the single cell RNA sequencing pipeline is the clustering step, which groups cells with similar gene expression profiles together to identify cell types.
Typically, this step is performed using a method called k-nn clustering, with PCA used to reduce the dimensionality of the data before clustering.