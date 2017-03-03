#!/bin/bash
# 3-3-2017 MRC-Epid JHZ

rt=/genetics/bin/hess
wd=/genetics/data/gwas/8-7-15

cd $wd
for trait in BUA VOS
do
  for chr in $(seq 22); do echo rsID pos A0 A1 Z-score N > QUS/$trait.$chr.txt; done
  gunzip -c OMICS-EPIC_ALL_${trait}_12122015.txt.gz|awk -vtrait=$trait '
  {
     if (NR>1) {
        split($2,a,":")
        chr=a[1]
        pos=a[2]
        print $1, pos, $5, $6, $8/$9, $4 >> sprintf("QUS/%s.%d.txt",trait,chr)
     }
  }'
done

# Step 0/1 - setup/eigenvalues and projections

# sge
for chr in $(seq 22); do
  for trait in BUA VOS; do
     sge "$wd/test.subs $chr $trait $rt $wd"
  done
done

# parallel -j10 $wd/test.subs {1} {2} {3} {4} ::: $(seq 22) ::: BUA VOS ::: $rt ::: $wd

# Step 2 - compute local SNP heritability

python $rt/hess.py --prefix $wd/QUS/BUA --k 50 --out $wd/QUS/BUA.h2g
python $rt/hess.py --prefix $wd/QUS/VOS --k 50 --out $wd/QUS/VOS.h2g

for chr in $(seq 22); do rm QUS/$chr QUS/${trait}.${chr}.txt; done

