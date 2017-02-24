#!/bin/bash
# 24-2-2017 MRC-Epid JHZ

rt=/genetics/bin/hess
rt2=/genetics/bin/hess/tests

for trait in BUA VOS
do
  for chr in $(seq 22) 23 25;do echo rsID pos A0 A1 Z-score N > tests/$trait-$chr.txt;done
  gunzip -c /genetics/data/gwas/8-7-15/OMICS-EPIC_ALL_${trait}_12122015.txt.gz|awk '
  {
     if (NR>1) {
        split($2,a,":")
        chr=a[1]
        pos=a[2]
        print $1, pos, $5, $6, $8/$9, $4 >> sprintf("tests/%s-%d.txt",trait,chr)
     }
  }' trait=$trait
done

parallel -j10 -C' ' '/bin/bash test.subs {1} {2} /genetics/bin/hess /genetics/bin/hess/tests' ::: $(seq 22) ::: BUA VOS

# Step 2 - compute local SNP heritability

python hess.py --prefix $rt2/BUA --k 50 --out $rt2/BUA.h2g
python hess.py --prefix $rt2/VOS --k 50 --out $rt2/VOS.h2g

# with sge or none
for chr in $(seq 22)
do
  for trait in BUA VOS
  do
     echo sge "/bin/bash hess.subs $chr $trait $rt $rt2"
     echo /bin/bash hess.subs $chr $trait $rt $rt2 &
  done
done

for chr in $(seq 22); do rm $chr BUA-$chr VOS-$chr; done
