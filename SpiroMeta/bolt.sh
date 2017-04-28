# 28-4-2017 MRC-Epid JHZ

parallel --dry-run "/bin/echo /usr/local/bin/sge \"/genetics/data/software/bin/bolt \
    --fam=/genetics/data/gwas/27-2-17/Axiom_UKB_EPICN_release_04Dec2014.fam \
    --bim=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014.bim \
    --bed=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014.bed \
    --phenoFile=/genetics/data/gwas/27-2-17/{2}.dat \
    --phenoCol={1}_{2} \
    --lmm \
    --impute2FileList=/genetics/data/gwas/27-2-17/impute.list \
    --impute2FidIidFile=/genetics/data/gwas/27-2-17/impute.id \
    --statsFileImpute2Snps=/scratch/tempjhz22/27-2-17/EPIC{1}_{2}.stats \
    --LDscoresUseChip \
    --noMapCheck \
    --numLeaveOutChunks 2 \
    --statsFile=/scratch/tempjhz22/27-2-17/results/{1}_{2}.stats \
    --numThreads=12 \
    2>&1 | tee /scratch/tempjhz22/27-2-17/results/{1}_{2}.log\"" ::: fev fvc fevfvc ::: never_smoker ever_smoker men women

# EPIC_omics=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014
# awk '{$1=NR;gsub(/ /,"\t",$0);print}' $EPIC_omics.fam > $(basename $EPIC_omics).fam
# touch impute.list
# for i in $(seq 22);do echo -e $i\\t/scratch/tempjhz22/23-1-17/HRC/EPIC-Norfolk.chr$i.vcf.gz >> impute.list;done
