# This seeds a collection of utilities for GWAS

The scripts here are developed to facilitate HESS as available from https://github.com/huwenboshi/hess, into /genetics/bin/hess.

The scripts were initially tested using EPIC-Norfolk GWAS, for which I created test.sh, test.subs and test.awk; they work on /genetics/bin/hess/tests directory.

Further work is done to make it generic including examples for height and QUS meta-analyses. These only involve SNP ids the as sorting key. The scripts are hess.subs and hess.awk.

NOTE finally that HESS describes what should have been a .bim file (PLINK) as a .bed file, yet the latter is as with UCSC (https://genome.ucsc.edu/).
