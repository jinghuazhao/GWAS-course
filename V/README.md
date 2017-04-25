## Module V. Additional topics

9:30am -- 17:30pm

The module will look further into several other areas of research in GWAS, to be followed by some case studies.

### Lecture

9:30am -- 12:30pm

Consortium collaboration: Gene-Lifestyle Interactions (CHARGE), Educational Attainment Analysis (SSGAC), Global Lipids Genetics/GIANT Consortium HRC and 1KG phase3

1. Conditional/joint analysis

2. Mendelian randomization

3. Microarray, methylation, TWAS

[CHARGE consortium](http://www.chargeconsortium.com/). `The Cohorts for Heart and Aging Research in Genomic Epidemiology (CHARGE) Consortium was formed to facilitate genome-wide association study meta-analyses and replication opportunities among multiple large and well-phenotyped longitudinal cohort studies.`

[GIANT consortium](http://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium). `The Genetic Investigation of ANthropometric Traits (GIANT) consortium is an international collaboration that seeks to identify genetic loci that modulate human body size and shape, including height and measures of obesity. The GIANT consortium is a collaboration between investigators from many different groups, institutions, countries, and studies, and the results represent their combined efforts. The primary approach has been meta-analysis of genome-wide association data and other large-scale genetic data sets. Anthropometric traits that have been studied by GIANT include body mass index (BMI), height, and traits related to waist circumference (such as waist-hip ratio adjusted for BMI, or WHRadjBMI). Thus far, the GIANT consortium has identified common genetic variants at hundreds of loci that are associated with anthropometric traits.`

[SSGAC](https://www.thessgac.org/). `The SSGAC is a cooperative enterprise among medical researchers and social scientists that coordinates genetic association studies for social science outcomes and provides a platform for interdisciplinary collaboration and cross-fertilization of ideas. The SSGAC also tries to promote the collection of harmonized and well-measured phenotypes.`.

### Exercises

13:30pm -- 17:30pm

**TASKS**

In a SpiroMeta call for HRC imputation data contribution, [imputation checker](http://www.well.ox.ac.uk/~wrayner/tools/Post-Imputation.html), is required, which in turn requires GD::Graph module from `Perl`.
```
# one can use ```pip install GD::Graph``` or preferably
perl -MCPAN -e shell
install GD::Graph
# to remove the ^M signature for Windows
dos2unix ic.pl
# to make it executable
chmod +x ic.pl
```

Further examples are available from the [HRC-1KG directory](../HRC-1KG) in this repository.

**Suggested reading**

Datta & Nettleton (2014), Mandoiu & Zelikovsky (2016), Wang (2016), Mancuso et al. (2017).

**Related information**

[HESS](https://github.com/huwenboshi/hess), Heritability Estimation from Summary Statistics.

[R2BGLiMS](https://github.com/pjnewcombe/R2BGLiMS), R wrapper for a Java Bayesian GLM variable selection package including `JAM`.

[FUSION](https://github.com/gusevlab/fusion_twas). `methods for functional summary-based imputation.`

[frea-pipeline](https://github.com/aksarkar/frea-pipeline). `Functional Region Enrichment Analysis.`

[GenoSkyline-Plus](http://genocanyon.med.yale.edu/GenoSkyline). `GenoSkyline is a principled framework to predict tissue-specific functional regions through integrating high-throughput epigenomic annotations. Integrative analysis of GenoSkyline annotations with GWAS summary statistics could systematically identify biologically relevant tissue types and provide novel insights into the genetic basis of human complex traits.`

[UES](https://github.com/JamesHayes/uesEnrichment) `Uncovering Enrichment through Simulation) Algorithm Developmenty`.

See also my GitHub repositories for [hess-pipeline](https://github.com/jinghuazhao/hess-pipeline) and [TWAS-pipeline](https://github.com/jinghuazhao/TWAS-pipeline).
