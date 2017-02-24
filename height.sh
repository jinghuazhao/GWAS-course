#!/bin/bash
# 24-2-2017 MRC-Epid JHZ

HESS=/genetics/bin/hess
wd=/genetics/bin/hess/height

cd $wd
awk '{
  FS=OFS="\t";
  t=NR
  if(NR==1) t="Pos"
  if(NR==1) print "SNP","pos","A1","A2","Z", "N"
  else print $1,t,$2,$3,$5/$6,$8
}' /genetics/data/twas/14-10-16/GIANT/GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt | sort -k1,1 > height.txt

for chr in $(seq 22); do 
    gunzip -c $HESS/refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz | \
    sort -k1,1 | \
    awk -vOFS="\t" '{print NR,$1,0,$2,$3,$4}' > legend${chr}.txt
done

seq 22 | parallel -j10 -C' ' '/bin/bash /genetics/bin/hess/hess.subs {} height /genetics/bin/hess /genetics/bin/hess/height'
