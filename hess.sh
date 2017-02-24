#!/bin/bash
# 24-2-2017 MRC-Epid JHZ

trait=$1
HESS=/genetics/bin/hess
wd=$trait

cd $wd

for chr in $(seq 22); do 
    gunzip -c $HESS/refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz | \
    sort -k1,1 | \
    awk -vOFS="\t" '{print NR,$1,0,$2,$3,$4}' > legend${chr}.txt
done

parallel -j10 {1} {2} {3} {4} ::: $(seq 22) ::: $trait ::: $HESS ::: $wd

# Step 2 - compute local SNP heritability
  
python $HESS/hess.py --prefix $trait --k 50 --out $trait.h2g

rm legend*.txt
