#!/bin/bash
#28-1-2017 MRC-Epid JHZ

rt=/genetics/data/gwas/23-1-17/bin
rt2=/scratch/tempjhz22/23-1-17/HRC

$rt/bcftools query -l $rt2/EPIC-Norfolk.chr22.vcf.gz > $rt2/EPIC-Norfolk.sample
