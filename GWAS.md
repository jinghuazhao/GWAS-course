# Course notes for GWAS

## Module I. Overview

### Overview

#### The roadmap to GWAS

Background, study designs, 

[GWAS catalogue](http://www.ebi.ac.uk/gwas/)

#### Examples of GWAS

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

[dbGaP](https://www.ncbi.nlm.nih.gov/gap)

[EGA](https://www.ebi.ac.uk/ega/home)

[GAW](https://www.gaworkshop.org/)

#### Consortium summary statistics

[GIANT consortium](http://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium). The Genetic Investigation of ANthropometric Traits (GIANT) consortium is an international collaboration that seeks to identify genetic loci that modulate human body size and shape, including height and measures of obesity. The GIANT consortium is a collaboration between investigators from many different groups, institutions, countries, and studies, and the results represent their combined efforts. The primary approach has been meta-analysis of genome-wide association data and other large-scale genetic data sets. Anthropometric traits that have been studied by GIANT include body mass index (BMI), height, and traits related to waist circumference (such as waist-hip ratio adjusted for BMI, or WHRadjBMI). Thus far, the GIANT consortium has identified common genetic variants at hundreds of loci that are associated with anthropometric traits.

[CHARGE consortium](http://www.chargeconsortium.com/). The Cohorts for Heart and Aging Research in Genomic Epidemiology (CHARGE) Consortium was formed to facilitate genome-wide association study meta-analyses and replication opportunities among multiple large and well-phenotyped longitudinal cohort studies.

Suggested reading

Various reviews and Nature (Genetics) papers

Consortium analysis plans

Other software and languages

[JAGS](https://sourceforge.net/projects/mcmc-jags/)

[SAS](http://www.sas.com)

[Stan](http://mc-stan.org/)

[Stata](http://www.stata.com)

C/C++, Fortran, Python

#### Books and their publisher websites

[A Statistical Approach to Genetic Epidemiology](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-3527323899.html)

[Computational Methods for Next Generation Sequencing Data Analysis](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1118169484.html)

[Design, Analysis, and Interpretation of Genome-Wide Association Scans](http://www.springer.com/gp/book/9781461494423)

[Genome-Wide Association Studies and Genomic Prediction](http://www.springer.com/gb/book/9781627034463)

[Likelihood, Bayesian, and MCMC Methods in Quantitative Genetics](http://www.springer.com/gb/book/9780387954400)

[Mathematical and Statistical Methods for Genetic Analysis](http://www.springer.com/gb/book/9780387953892)

[Next-Generation Sequencing Data Analysis](https://www.crcpress.com/Next-Generation-Sequencing-Data-Analysis/Wang/p/book/9781482217889)

[Statistical Human Genetics-Methods and Protocols](http://www.springer.com/gb/book/9781617795541)

[Statistical Methods in Genetic Epidemiology](https://global.oup.com/academic/product/statistical-methods-in-genetic-epidemiology-9780195159394?cc=gb&lang=en&)

[Statistical Analysis of Next Generation Sequencing Data](http://www.springer.com/cn/book/9783319072111)


#### Boftware list

Software | URL
---------|-------------------------------------------------------
BEAGLE | https://faculty.washington.edu/browning/beagle/b3.html
BOLT-LMM | https://data.broadinstitute.org/alkesgroup/BOLT-LMM/
EIGENSOFT| https://data.broadinstitute.org/alkesgroup/EIGENSOFT/
GCTA | http://cnsgenomics.com/software/gcta/
GenABEL | http://www.genabel.org/
IMPUTE2 | http://mathgen.stats.ox.ac.uk/impute/impute_v2.html
MaCH | http://csg.sph.umich.edu/abecasis/MACH/index.html
PLINK2 | https://www.cog-genomics.org/plink2
PLINKSEQ | https://atgu.mgh.harvard.edu/plinkseq/
QCTOOL | http://www.well.ox.ac.uk/~gav/qctool/#overview
QUICKTEST | https://wp.unil.ch/sgg/quicktest/
RV-TDT | http://bioinformatics.org/rv-tdt/
rvtests | http://genome.sph.umich.edu/wiki/Rvtests
SEQPower | http://www.bioinformatics.org/spower/start
SNPTEST | https://mathgen.stats.ox.ac.uk/genetics_software/snptest/snptest.html
UNPHASED | https://sites.google.com/site/fdudbridge/software/unphased-3-1
VAT | http://varianttools.sourceforge.net/Association/HomePage

This is an extension of the [Baylor list](https://statgen.research.bcm.edu/index.php/Genassoc2016).
