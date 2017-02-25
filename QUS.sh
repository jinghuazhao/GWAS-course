#!/bin/bash
# 25-2-2017 MRC-Epid JHZ

cd /genetics/bin/hess/QUS
for trait in BUA VOS; do
    gunzip -c ${trait}.ALL.GWAMA.out.gz | \
    awk -vOFS="\t" '(NR>1){print $1,NR,$2,$3,$9,$16}' | \
    sort -k1,1 > ${trait}
done

/genetics/bin/hess/hess.sh BUA
/genetics/bin/hess/hess.sh QUS

rm BUA QUS
