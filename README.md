# This seeds a collection of utilities for GWAS

The scripts here are developed to facilitate HESS as available from https://github.com/huwenboshi/hess.

The scripts were initially tested using EPIC-Norfolk GWAS, for which I created test.sh, test.subs and test.awk; they work on /genetics/bin/hess/tests directory.

Further work is done to make it generic including examples for height and QUS meta-analyses. These only involve SNP ids the as sorting key. The scripts are hess.sh, hess.subs and hess.awk.

To set it up, modify file locations in hess.sh as appropriate for your system.

The syntax is as follows,

hess.sh GWAS-summary-statistics

where GWAS-summary-statistics has these columns: rsID, pos, A1, A2, Z, N.

NOTE finally that HESS describes bed file as with UCSC (https://genome.ucsc.edu/).
