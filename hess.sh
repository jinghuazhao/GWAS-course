#!/bin/bash
# 26-2-2017 MRC-Epid JHZ

trait=$1
HESS=/genetics/bin/hess
wd=$(pwd)/$(basename $trait).tmp

if [ ! -d $wd ]; then
   mkdir -p $wd
fi
cd $wd

# Step 0/1 - setup/eigenvalues and projections

parallel -j11 $HESS/hess.subs {1} {2} {3} {4} ::: $(seq 22) ::: $trait ::: $HESS ::: $wd

# Step 2 - compute local SNP heritability
  
python $HESS/hess.py --prefix $trait --k 50 --out $trait.h2g

rm $wd/legend*.txt $wd/${trait}.*.dat
