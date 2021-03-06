# 8-5-2017 MRC-Epid JHZ

parallel "/usr/local/bin/sge \"/genetics/data/software/bin/bolt \
    --fam=/genetics/data/gwas/27-2-17/Axiom_UKB_EPICN_release_04Dec2014.fam \
    --bim=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014.bim \
    --bed=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014.bed \
    --phenoFile=/genetics/data/gwas/27-2-17/{2}.dat \
    --phenoCol={1}_{2} \
    --lmm \
    --impute2FileList=/genetics/data/gwas/27-2-17/impute.list \
    --impute2FidIidFile=/genetics/data/gwas/27-2-17/impute.id \
    --remove /genetics/data/gwas/27-2-17/exclude.dat \
    --statsFileImpute2Snps=/scratch/tempjhz22/27-2-17/results/IMPUTE_{1}_{2}.stats \
    --LDscoresUseChip \
    --noMapCheck \
    --numLeaveOutChunks 2 \
    --statsFile=/scratch/tempjhz22/27-2-17/results/CHIP_{1}_{2}.stats \
    --numThreads=12 \
    2>&1 | tee /scratch/tempjhz22/27-2-17/results/{1}_{2}.log\"" ::: fev fvc ff pef ::: nonsmk smk smkPY females males

# EPIC_omics=/genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014
# awk '{$1=NR;gsub(/ /,"\t",$0);print}' $EPIC_omics.fam > $(basename $EPIC_omics).fam
# touch impute.list
# for i in $(seq 22);do echo -e $i\\t/gen_omics/data/EPIC-Norfolk/HRC/chr$i.gen.gz >> impute.list;done
