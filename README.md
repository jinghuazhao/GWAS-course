# A collection of utilities for GWAS

`invnorm.txt` describes how to do Inverse Normal transformation.

`in.awk` is an `awk` implementation of `in`.

There have been calls for adding dosage (DS) field in vcf from `IMPUTE2` to furnish analysis via `rvtests`.


File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf


# Outlines for GWAS

## Module 1. Overview
I Overview
1. The roadmap to GWAS
Background, study designs, catalogue
2. Examples of GWAS
GIANT, CHARGE
3. Linux
A rich variety of open-source software is available for system administration, database management, Internet facility and development 
environment including system-level commands and utilities to enable powerful high-level programming languages such as 
C/C++/Fortran/Python are readily available. R is built on these.
4. R for reproducible research
A combination of data management, statistical analysis, graphics, programming in a unified environment, it enjoys ever-growing 
user-base and facilities.
II Computer lab
1 Linux
Types of systems: Ubunto, Fedora, VirtualBox 
shell, .bashrc, export, env, PATH, LD_LIBRARY_PATH, source
Basic operations, ls –a/-F/-l/-t/-rt, mkdir/cd/pwd/echo/wc/grep/sed/bc, cp, cut/paste, cat, history, more, diff, sdiff, chmod
seq, sort/join, sftp, ssh
Pipe and redirection
Mixing environments, e.g., <<<
Makefile
2. C/C++/Fortran/Python
3. R
Setup – apt-get/dnf, installing packages, RStudio, LaTeX
Basic operations
Package development
 
## Module 2. Elements of genetic association
I Elements
Chromosomes, DNA, QC, alleles, genotypes, HWE, mode of inheritance, haplotypes and linkage disequilibrium, GxG and GxE interactions
Phenotype: QC, transformation
Association models: linear, logistic, Cox regression models; R^2, AUC, Cstat
Meta-analysis: fixed and random effects models
Missing data models:
Study designs: case-control, case-cohort, family
Population stratification and genomic controls
II Computer lab
Modern data manipulation with dplyr, tidyr, tidyverse
Grammar of graphics with ggplot2
HaploView
Gene annotation using UCSC: genes, strand, builds and liftover, regions
R packages
glm
metafor
gap, haplo.stats


## Module 3. GWAS
I Aspects of GWAS
QC-HWE, call rates, MAF
Imputation, imputation quality
Multiple testing
Discovery, replication studies
Report of results and GSEA
Prediction
II Computer lab
Linux
Multithread and parallel computing; (.)bash(rc), awk, tar, gzip, pipe
Specific software
qctool, bcftool, vcftool, PLINK2, IMPUTE/MACH, SNPTEST, QUICKTEST, METAL
R and Bioconductor packages
GenAssoc, snpMatrix, snpStats, GenABEL, GWAStools, QCtools
 
## Module 4. Advanced topics 
I Topics
Rare variants
Longitudinal data
Polygenic modelling
Bayesian methods
Marchine learning
II Computer lab
BOLT/GEMMA/GCTA/JAGS/Stan
lme4, MCMCglmm, SKAT
git, github, RStudio, markdown
R package development
Embedding C/C++ into R, Stata and SAS
 
## Module 5. Additional topics
I Summary statistics
Conditional/joint analysis
Microarray, methylation, TWAS, summary statistics
Mendelian randomization
II Resources
dbGaP, EGA, GAW
Consortium summary statistics
Suggested reading
Various reviews and Nature (Genetics) papers
Consortium analysis plans
Other software and languages
Books
SAS, Stata, C/C++, Fortran, Python

