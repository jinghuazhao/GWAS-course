#!/bin/bash
# 24-2-2017 MRC-Epid JHZ

HESS=/genetics/bin/hess
wd=/genetics/bin/hess/QUS

cd $wd
for trait in BUA VOS; do
    gunzip -c ${trait}.ALL.GWAMA.out.gz | \
    awk -vOFS="\t" '(NR>1){print $1,NR,$2,$3,$9,$16}' | \
    sort -k1,1 > ${trait}.txt
done
for chr in $(seq 22); do 
    gunzip -c $HESS/refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz | \
    sort -k1,1 | \
    awk -vOFS="\t" '{print NR,$1,0,$2,$3,$4}' > legend${chr}.txt
done

parallel -j10 -C' ' '/bin/bash /genetics/bin/hess/hess.subs {1} {2} /genetics/bin/hess /genetics/bin/hess/QUS' ::: $(seq 22) ::: BUA VOS

# Step 2 - compute local SNP heritability

python $HESS/hess.py --prefix BUA-s1 --k 50 --out BUA-s2.txt
python $HESS/hess.py --prefix VOS-s1 --k 50 --out VOS-s2.txt
