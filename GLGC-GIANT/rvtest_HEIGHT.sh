# 2-5-2017 MRC-Epid JHZ

# a list of jobs is generated first
# cd /genetics/data/gwas/23-1-17
# HRC
parallel echo ::: HEIGHT ::: $(seq 22) ::: all men women > HRC_HEIGHT.lst
# 1KG
parallel echo ::: HEIGHT ::: $(seq 23) ::: all men women > 1KG_HEIGHT.lst

# qsub rvtest.qsub
