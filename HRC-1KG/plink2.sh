# 26-4-2017 MRC-Epid JHZ

s=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014
t=/scratch/tempjhz22/23-1-17
# prune SNPs
/genetics/bin/plink2 --bfile $s --maf 0.05 --hwe 0.000001 --indep-pairwise 50 5 0.2 --threads 12 --out $t/prune

# obtain relationship matrix
/genetics/bin/plink2 --bfile $s --extract $t/prune.prune.in --make-rel square --threads 12 --out $t/rel

gzip $t/rel.rel

# add header
awk '{if(NR==1) printf "FID\tIID\t"; printf $2 "\t"}' $t/rel.rel.id | sed 's/[\t]$/\n/g'> $t/EPIC-Norfolk.rel
gunzip -c $t/rel.rel.gz | paste $t/rel.rel.id - | awk -vFS="\t" -vOFS="\t" '{$1=NR;print}' >> $t/EPIC-Norfolk.rel
