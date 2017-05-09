# 9-5-2017 MRC-Epid JHZ

# The old 0+omicsid
rt=/gen_omics/data/EPIC-Norfolk/HRC
rt2=/scratch/tempjhz22/23-1-17
qctool=/genetics/data/software/bin/qctool
cd /scratch/tempjhz22/23-1-17/HRC/SpiroMeta
awk -vFS="\t" -vOFS="\t" '{print 0,$2}' /genetics/data/gwas/27-2-17/exclude.dat > $rt2/HRC/SpiroMeta/EPIC-Norfolk.excl
for chr in $(seq 22); do sge "$qctool \
 -g $rt/chr${chr}.gen.gz \
 -s $rt/EPIC-Norfolk.sample \
 -excl-samples $rt2/HRC/SpiroMeta/EPIC-Norfolk.excl \
 -snp-stats $rt2/HRC/SpiroMeta/EPIC-Norfolk.chr${chr}.snpstats.gz \
 -assume-chromosome ${chr} \
 -log $rt2/HRC/SpiroMeta/EPIC-Norfolk.chr${chr}.log"
done

parallel -j10 '/bin/gunzip -c /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.chr{}.snpstats.gz|\
/bin/awk -vchr={} -f /genetics/data/gwas/27-2-17/snpstats.awk > /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.chr{}.info' ::: $(seq 22)

cp /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.chr1.info /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.info
for chr in $(seq 2 22);do
awk 'NR>1' /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.chr${chr}.info >> /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.info
done
stata <<END
insheet using /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk.info, case clear
rename chromosome chr
rename position pos
rename information Imp_info
sort chr pos
saveold /scratch/tempjhz22/23-1-17/HRC/SpiroMeta/EPIC-Norfolk, replace 
END
