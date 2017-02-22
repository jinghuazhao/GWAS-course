# 22-2-2017 MRC-Epid JHZ

rt=/genetics/bin/hess
for chr in $(seq 22)
do
  for trait in BUA VOS
  do
  gunzip -c refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz | \
  awk '{print chr,$1,sprintf("%00000000015d",$2),$2,$3,$4}' chr=$chr | sort -k3 > 1
  # Step 0 - GWAS summary statistics
    echo $trait-$chr
    awk 'NR>1' $rt/tests/${trait}-${chr}.txt | \
    awk '{$2=sprintf("%00000000015d",$2);print}' | sort -k2 > 2
    join -13 -22 1 2 | awk -f $rt/hess.awk > $rt/tests/${trait}-${chr}.dat
  # Step 1 - compute eigenvalues and projections
    python hess.py \
    --chrom $chr \
    --h2g $rt/tests/$trait-$chr.dat \
    --reference-panel $rt/refpanel/1kg_phase3_chr${chr}_eur_5pct_gen.txt.gz \
    --legend-file $rt/refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz \
    --partition-file nygcresearch-ldetect-data-ac125e47bf7f/EUR/fourier_ls-chr${chr}.bed \
    --out $rt/tests/$trait-s1-chr$chr
  # Step 2 - compute local SNP heritability
    python hess.py --prefix $rt/tests/$trait-s1-chr$chr --k 20 --out tests/$trait-s2-chr$chr.txt
  done
  rm 1 2
done
