# Course notes for GWAS

## Module I. Overview

### Overview

#### The roadmap to GWAS

Background, study designs, catalogue

#### Examples of GWAS

GIANT, CHARGE

#### Linux

A rich variety of open-source software is available for system administration, database management, Internet facility and development environment including system-level commands and utilities to enable powerful high-level programming languages such as C/C++/Fortran/Python are readily available. R is built on these.

##### R for reproducible research

A combination of data management, statistical analysis, graphics, programming in a unified environment, it enjoys ever-growing user-base and facilities.

### Computer lab

#### Linux

Types of systems: Ubunto, Fedora, VirtualBox 

shell, .bashrc, export, env, PATH, LD_LIBRARY_PATH, source

Basic operations, ls –a/-F/-l/-t/-rt, mkdir/cd/pwd/echo/wc/grep/sed/bc, cp, cut/paste, cat, history, more, diff, sdiff, chmod

seq, sort/join, sftp, ssh

Pipe and redirection

Mixing environments, e.g., <<<

Makefile

#### C/C++/Fortran/Python

#### R

Setup – apt-get/dnf, installing packages, RStudio, LaTeX

Basic operations

Package development
 
## Module II. Elements of genetic association

### Elements

Chromosomes, DNA, QC, alleles, genotypes, HWE, mode of inheritance, haplotypes and linkage disequilibrium, GxG and GxE interactions

Phenotype: QC, transformation

Association models: linear, logistic, Cox regression models; R^2, AUC, Cstat

Meta-analysis: fixed and random effects models

Missing data models:

Study designs: case-control, case-cohort, family

Population stratification and genomic controls

### Computer lab

Modern data manipulation with dplyr, tidyr, tidyverse

Grammar of graphics with ggplot2

HaploView

Gene annotation using UCSC: genes, strand, builds and liftover, regions

R packages

glm

metafor

gap, haplo.stats
 
## Module III. GWAS

### Aspects of GWAS

QC-HWE, call rates, MAF

Imputation, imputation quality

Multiple testing

Discovery, replication studies

Report of results and GSEA

Prediction

### Computer lab

Linux

Multithread and parallel computing; (.)bash(rc), awk, tar, gzip, pipe

Specific software

qctool, bcftool, vcftool, PLINK2, IMPUTE/MACH, SNPTEST, QUICKTEST, METAL

R and Bioconductor packages

GenAssoc, snpMatrix, snpStats, GenABEL, GWAStools, QCtools
 
## Module IV. Advanced topics 

### Topics

Rare variants

Longitudinal data

Polygenic modelling

Bayesian methods

Marchine learning

### Computer lab

BOLT/GEMMA/GCTA/JAGS/Stan

lme4, MCMCglmm, SKAT

git, github, RStudio, markdown

R package development

Embedding C/C++ into R, Stata and SAS
 
## Module V. Additional topics

### Summary statistics

Conditional/joint analysis

Microarray, methylation, TWAS, summary statistics

Mendelian randomization

### Resources

dbGaP, EGA, GAW

Consortium summary statistics

Suggested reading

Various reviews and Nature (Genetics) papers

Consortium analysis plans

Other software and languages

Books

SAS, Stata, C/C++, Fortran, Python

[Baylor course software list] (https://statgen.research.bcm.edu/index.php/Genassoc2016)

Software | URL
---------|-------------------------------------------------------
BEAGLE | https://faculty.washington.edu/browning/beagle/b3.html
EIGENSOFT| https://data.broadinstitute.org/alkesgroup/EIGENSOFT/
GenABEL | http://www.genabel.org/
MaCH | http://csg.sph.umich.edu/abecasis/MACH/index.html
PLINK2 | https://www.cog-genomics.org/plink2
PLINKSEQ | https://atgu.mgh.harvard.edu/plinkseq/
RV-TDT | http://bioinformatics.org/rv-tdt/
SEQPower | http://www.bioinformatics.org/spower/start
UNPHASED | https://sites.google.com/site/fdudbridge/software/unphased-3-1
VAT | http://varianttools.sourceforge.net/Association/HomePage
