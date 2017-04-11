#!/bin/bash
#11-4-2017 MRC-Epid JHZ

#Generate lists of monomorphic sites; Generate VCFs with only polymorphic variants; Index the vcf files
rt=/genetics/data/gwas/23-1-17/bin
rt2=/scratch/tempjhz22/23-1-17/HRC
zgrep=/usr/bin/zgrep
sed=/bin/sed
sort=/bin/sort
bcftools=$rt/bcftools
bgzip=$rt/bgzip
tabix=$rt/tabix
cd /scratch/tempjhz22/23-1-17/HRC
for i in $(seq 22);do sge "$bcftools view -q 1.0:major ${i}.vcf.gz -O u |\
 $bcftools query -f '%CHROM\t%POS\t%REF,%ALT\n' >> $rt2/EPIC_EA_JHZ_imputed.monomorphic.chr${i}.txt;\
 $bcftools view -c 1:minor $rt2/${i}.vcf.gz -O z > $rt2/${i}.imputed.poly.vcf.gz;\
 $tabix -p vcf $rt2/${i}.imputed.poly.vcf.gz;\
 ($zgrep ^\"#\" $rt2/${i}.imputed.poly.vcf.gz;$zgrep -v ^\"#\" $rt2/${i}.imputed.poly.vcf.gz|$sed 's:^chr::ig'|$sort -k1,1n -k2,2n)|$bgzip -c > $rt2/chr${i}.vcf.gz;\
 $tabix -f -p vcf $rt2/chr${i}.vcf.gz"
done
