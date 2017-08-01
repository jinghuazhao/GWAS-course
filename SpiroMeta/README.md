# Code used in the SpiroMeta contribution

A SpiroMeta call for HRC imputation data contribution requires [imputation checker](http://www.well.ox.ac.uk/~wrayner/tools/Post-Imputation.html), which in turn requires GD::Graph module from `Perl`.

The toolset first extracts the first eight columns of VCF files, including chromosome, position, ID, QUAL, FILTER, INFO.
```
vcfparse.pl -d /scratch/tempjhz22/23-1-17/HRC/SpiroMeta -o /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/vcfparse -g
```
where -d indicates input directory, -o output directory, and -g gzipped format. Now `ic.pl` is called to produce QC-plots.
```
ic.pl -d vcfparse -r HRC.r1.GRCh37.autosomes.mac5.sites.tab.gz -h
```
where -r indicates reference: and -h indicates HRC:

`st.sh` shows how to install GD::Graph module.

Summary statistics are additionally generated via `qctool` -snp-stats as in [snpstats.sh](snpstats.sh).

The analysis plan requires subgroup analysis on never and ever smokers, and by sex. A succinct way to do is shown in [bolt.sh](bolt.sh), where `impute.list` and `impute.id` contain list of chromosome-specific imputed genotypes and list of individuals, respectively. In total, there are 20 analyses.

The data preparation is done via [dta.do](dta.do) and format is done via [extract.do](extract.do) but it is neater with [dta.sas](dta.sas) since SAS handles groupwise
operations and therefore adopted for smoking-related trait. Note that the results for directly genotyped and imputed SNPs are contained in files with prefex CHIP and 
IMPUTE, respectively.
