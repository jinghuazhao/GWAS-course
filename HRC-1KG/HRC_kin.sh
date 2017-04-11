#!/bin/bash
# 10-4-2017 MRC-Epid JHZ

rt=/genetics/data/gwas/23-1-17/bin
rt2=/scratch/tempjhz22/23-1-17/HRC
grep=/bin/grep
zgrep=/usr/bin/zgrep
bcftools=$rt/bcftools
bgzip=$rt/bgzip
vcf2kinship=$rt/vcf2kinship
($bcftools view -q 0.05:minor $rt2/chr1.vcf.gz -O v ;\
$bcftools view -q 0.05:minor $rt2/chr2.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr3.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr4.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr5.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr6.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr7.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr8.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr9.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr10.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr11.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr12.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr13.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr14.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr15.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr16.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr17.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr18.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr19.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr20.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr21.vcf.gz -O v | $grep -v "^#"; \
$bcftools view -q 0.05:minor $rt2/chr22.vcf.gz -O v | $grep -v "^#")|$bgzip -c>$rt2/chrALL.vcf.gz

$vcf2kinship --inVcf $rt2/chrALL.vcf.gz --out $rt2/HRC.kinship_matrix --bn --minMAF .05 --thread 12
