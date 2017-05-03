# 2-5-2017 MRC-Epid JHZ

rt=/gen_omics/data/EPIC-Norfolk/HRC/raw/EPIC-Norfolk
rt2=/scratch/tempjhz22/23-1-17
# 20932
qctool=/genetics/data/software/bin/qctool
cd /scratch/tempjhz22/23-1-17/HRC/SpiroMeta
for chr in $(seq 22);do sge "$qctool \
 -g $rt.chr${chr}.bgen \
 -s $rt2/EPIC-Norfolk.sample \
 -incl-samples $rt2/EPIC-Norfolk.inc \
 -snp-stats $rt2/HRC/SpiroMeta/EPIC-Norfolk.chr${chr}.snpstats \
 -assume-chromosome ${chr} \
 -log $rt2/HRC/SpiroMeta/EPIC-Norfolk.chr${chr}.log"
done

