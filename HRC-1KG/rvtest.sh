# 18-4-2017 MRC-Epid JHZ

# a list of jobs is generated first
# cd /genetics/data/gwas/23-1-17
# HRC
parallel echo ::: TC_INV logTG_INV HDL_INV LDL_INV TC_RAW logTG_RAW HDL_RAW LDL_RAW HEIGHT BMI WHRadjBMI WHRunadjusted ::: $(seq 22) ::: all > HRC_rvtest.lst
parallel echo ::: HEIGHT BMI WHRadjBMI WHRunadjusted ::: $(seq 22) ::: men women >> HRC_rvtest.lst
# 1KG
parallel echo ::: TC_INV logTG_INV HDL_INV LDL_INV TC_RAW logTG_RAW HDL_RAW LDL_RAW HEIGHT BMI WHRadjBMI WHRunadjusted ::: $(seq 23) ::: all > 1KG_rvtest.lst
parallel echo ::: HEIGHT BMI WHRadjBMI WHRunadjusted ::: $(seq 23) ::: men women >> 1KG_rvtest.lst

# qsub rvtest.qsub
