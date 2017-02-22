# 20-2-2017 MRC-Epid JHZ

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
