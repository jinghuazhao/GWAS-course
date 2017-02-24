# This seeds a collection of utilities for GWAS

HESS is cloned from https://github.com/huwenboshi/hess, into /genetics/bin/hess.

The scripts were initially tested using EPIC-Norfolk GWAS, for which I created hess_st.sh, hess.sh and hess.subs; they work on /genetics/bin/hess/tests directory.

Further work is done on meta-analysis for QUS, containing BUA.ALL.GWAMA.out.gz and VOS.ALL.GWAMA.out.gz. While the previous example uses chromosomal positions, there are only SNP ids available the sorting key is adjusted accordingly. The scripts are QUS.sh, QUS,subs and QUS.awk. Nevertheless this is likely to be more generic.

NOTE finally that HESS describes what should have been a .bim file as a .bed file, yet the latter is generic, as with UCSC (https://genome.ucsc.edu/).
