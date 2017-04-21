<img src="https://image.jimcdn.com/app/cms/image/transf/dimension=571x10000:format=png/path/sc907c1c4cc8c1f1e/image/i71ccc2b41a89bd06/version/1470133774/image.png" width="800" align="right">

# Outlines for Practical GWAS Using Linux and R

<img src="https://image.jimcdn.com/app/cms/image/transf/none/path/sc907c1c4cc8c1f1e/image/i501c0825ca0ccc93/version/1488797144/image.jpg" width="800" align="center">

## Module I. Overview

### Lecture

#### The roadmap to GWAS

Background, study designs, implementations

[GWAS catalogue](http://www.ebi.ac.uk/gwas/)

#### Linux

A rich variety of open-source software is available for system administration, database management, Internet facility and development environment including system-level commands and utilities to enable powerful high-level programming languages such as C/C++/Fortran/Python are readily available. R is built on these.

##### R for reproducible research

A combination of data management, statistical analysis, graphics, programming in a unified environment, it enjoys ever-growing user-base and facilities.

### Computer session

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

Browse the following websites,

[R](http://www.r-project.org)

[RStudio](https://www.rstudio.com/)

[Bioconductor](https://www.bioconductor.org/)
 
## Module II. Elements of genetic association

### Lecture

Chromosomes, DNA, QC, alleles, genotypes, HWE, mode of inheritance, haplotypes and linkage disequilibrium, GxG and GxE interactions

Phenotype: QC, transformation

Association models: linear, logistic, Cox regression models; R^2, AUC, Cstat

Meta-analysis: fixed and random effects models

Missing data models:

Study designs: case-control, case-cohort, family

Population stratification and genomic controls

### Computer session

Modern data manipulation with dplyr, tidyr, tidyverse

Grammar of graphics with ggplot2

HaploView

Gene annotation using UCSC: genes, strand, builds and liftover, regions

R packages

glm

metafor

gap, haplo.stats
 
## Module III. GWAS

### Lecture

QC-HWE, call rates, MAF

Imputation, imputation quality

Multiple testing

Discovery, replication studies

Report of results and GSEA

Prediction

### Computer session

Linux

Multithread and parallel computing; (.)bash(rc), awk, tar, gzip, pipe

Data formats

Specific software

qctool, bcftool, vcftool, PLINK2, IMPUTE/MACH, SNPTEST, QUICKTEST, METAL

R and Bioconductor packages

GenAssoc, snpMatrix, snpStats, GenABEL, GWAStools, QCtools
 
## Module IV. Advanced topics 

### Lecture

Rare variants

Longitudinal data

Polygenic modelling

Bayesian methods

Marchine learning

### Computer session

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

#### Use of GWAS summary data

[HESS](https://github.com/huwenboshi/hess), Heritability Estimation from Summary Statistics.

[R2BGLiMS](https://github.com/pjnewcombe/R2BGLiMS), R wrapper for a Java Bayesian GLM variable selection package including `JAM`.

#### Integration of expression and methylation data

[FUSION](https://github.com/gusevlab/fusion_twas). `methods for functional summary-based imputation.`

[frea-pipeline](https://github.com/aksarkar/frea-pipeline). `Functional Region Enrichment Analysis.`

[GenoSkyline-Plus](http://genocanyon.med.yale.edu/GenoSkyline). `GenoSkyline is a principled framework to predict tissue-specific functional regions through integrating high-throughput epigenomic annotations. Integrative analysis of GenoSkyline annotations with GWAS summary statistics could systematically identify biologically relevant tissue types and provide novel insights into the genetic basis of human complex traits.`

See also my GitHub repositories for [hess-pipeline](https://github.com/jinghuazhao/hess-pipeline) and [TWAS-pipeline](https://github.com/jinghuazhao/TWAS-pipeline).

### Resources

#### Other generic software systems

[JAGS](https://sourceforge.net/projects/mcmc-jags/). `JAGS is Just Another Gibbs Sampler. It is a program for the statistical analysis of Bayesian hierarchical models by Markov Chain Monte Carlo.`

[SAS](http://www.sas.com). `SAS (pronounced "sass") once stood for "statistical analysis system." It began at North Carolina State University as a project to analyze agricultural research. Demand for such software capabilities began to grow, and SAS was founded in 1976 to help customers in all sorts of industries – from pharmaceutical companies and banks to academic and governmental entities. SAS – both the software and the company – thrived throughout the next few decades. Development of the software attained new heights in the industry because it could run across all platforms, using the multivendor architecture for which it is known today. While the scope of the company has spread across the globe, the encouraging and innovative corporate culture has remained the same.`

[Stan](http://mc-stan.org/). `Thousands of users rely on Stan for statistical modeling, data analysis, and prediction in the social, biological, and physical sciences, engineering, and business.`

[Stata](http://www.stata.com). `Stata is a complete, integrated statistical software package that provides everything you need for data analysis, data management, and graphics.`

### Individual level data

[dbGaP](https://www.ncbi.nlm.nih.gov/gap). `The database of Genotypes and Phenotypes (dbGaP) was developed to archive and distribute the data and results from studies that have investigated the interaction of genotype and phenotype in Humans.`

[EGA](https://www.ebi.ac.uk/ega/home). `The European Genome-phenome Archive (EGA) allows you to explore datasets from genomic studies, provided by a range of data providers. Access to datasets must be approved by the specified Data Access Committee (DAC).`

[GAW](https://www.gaworkshop.org/). `The Genetic Analysis Workshops (GAWs) are a collaborative effort among genetic epidemiologists to evaluate and compare statistical genetic methods. For each GAW, topics are chosen that are relevant to current analytical problems in genetic epidemiology, and sets of real or computer-simulated data are distributed to investigators worldwide.  Results of analyses are discussed and compared at meetings held in even-numbered years.`

#### Consortium summary statistics

[GIANT consortium](http://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium). `The Genetic Investigation of ANthropometric Traits (GIANT) consortium is an international collaboration that seeks to identify genetic loci that modulate human body size and shape, including height and measures of obesity. The GIANT consortium is a collaboration between investigators from many different groups, institutions, countries, and studies, and the results represent their combined efforts. The primary approach has been meta-analysis of genome-wide association data and other large-scale genetic data sets. Anthropometric traits that have been studied by GIANT include body mass index (BMI), height, and traits related to waist circumference (such as waist-hip ratio adjusted for BMI, or WHRadjBMI). Thus far, the GIANT consortium has identified common genetic variants at hundreds of loci that are associated with anthropometric traits.`

[CHARGE consortium](http://www.chargeconsortium.com/). `The Cohorts for Heart and Aging Research in Genomic Epidemiology (CHARGE) Consortium was formed to facilitate genome-wide association study meta-analyses and replication opportunities among multiple large and well-phenotyped longitudinal cohort studies.`

#### Papers and reviews

Balding DJ (October 2006). [A tutorial on statistical methods for population association studies](http://www.nature.com/nrg/journal/v7/n10/abs/nrg1916.html), Nature Reviews Genetics 7:781-791.

Lander ES, Schork NJ (30 Sep 1994). [Genetic dissection of complex traits](http://science.sciencemag.org/content/265/5181/2037.long). Science 265(5181):2037-2048, DOI: 10.1126/science.8091226.

Risch N, Merikangas K. (13 Sep 1996). [The Future of Genetic Studies of Complex Human Diseases](http://science.sciencemag.org/content/273/5281/1516.long), Science 273(5281):1516-1517, DOI:10.1126/science.273.5281.1516.

Sasieni PD (Dec., 1997). [From Genotypes to Genes: Doubling the Sample Size](https://www.jstor.org/stable/2533494?seq=1#page_scan_tab_contents). Biometrics 53(4): 1253-1261.

The WTCCC (7 June 2007). [Genome-wide association study of 14,000 cases of seven common diseases and 3,000 shared controls](http://www.nature.com/nature/journal/v447/n7145/full/nature05911.html). Nature 447:661-678, doi:10.1038/nature05911.


#### Consortium analysis plans

#### Books and related websites

Ziegler A, Konig IR, Pahlke F (2010). [A Statistical Approach to Genetic Epidemiology: Concepts and Applications, with an e-Learning Platform, 2e](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-3527323899.html), Wiley.

Mandoiu I, Zelikovsky A (2016). [Computational Methods for Next Generation Sequencing Data Analysis](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1118169484.html), Wiley.

Stram OD (2014). [Design, Analysis, and Interpretation of Genome-Wide Association Scans](http://www.springer.com/gp/book/9781461494423), Springer.

Khoury MJ, Cohen BH, Beaty TH (1993). [Fundamentals of Genetic Epidemiology](https://www.amazon.co.uk/Fundamentals-Genetic-Epidemiology-Monographs-Biostatistics/dp/0195052889), OUP.

Gondro C, van der Werf J, Hayes B (2013). [Genome-Wide Association Studies and Genomic Prediction](http://www.springer.com/gb/book/9781627034463), Humana.

Sorensen D, Gianola D (2002). [Likelihood, Bayesian, and MCMC Methods in Quantitative Genetics](http://www.springer.com/gb/book/9780387954400), Springer.

Lange K (2002). [Mathematical and Statistical Methods for Genetic Analysis, 2e](http://www.springer.com/gb/book/9780387953892), Springer.

Wang X (2016). [Next-Generation Sequencing Data Analysis](https://www.crcpress.com/Next-Generation-Sequencing-Data-Analysis/Wang/p/book/9781482217889), CRC.

Elston RC., Satagopan JM, Sun S (2012). [Statistical Human Genetics-Methods and Protocols](http://www.springer.com/gb/book/9781617795541), Humana.

Thomas DC (2004). [Statistical Methods in Genetic Epidemiology](https://global.oup.com/academic/product/statistical-methods-in-genetic-epidemiology-9780195159394?cc=gb&lang=en&), OUP.

Datta S, Nettleton D (2014). [Statistical Analysis of Next Generation Sequencing Data](http://www.springer.com/cn/book/9783319072111), Springer.


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
