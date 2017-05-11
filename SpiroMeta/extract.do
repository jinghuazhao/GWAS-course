// 11-5-2017 MRC-Epid JHZ

gzuse /gen_omics/data/EPIC-Norfolk/HRC/SNPinfo.dta.gz
sort rsid
keep rsid RSnum probid type
gzsave /scratch/tempjhz22/27-2-17/SNPinfo, replace

program extract
insheet using /scratch/tempjhz22/27-2-17/results/IMPUTE_`1'_`2'.stats, case clear
rename SNP rsid
rename CHR chr
rename BP pos
sort rsid
merge 1:1 rsid using /scratch/tempjhz22/27-2-17/SpiroMeta/EPIC-Norfolk, gen(allSNPs)
keep if allSNPs==3
gzmerge rsid using /scratch/tempjhz22/27-2-17/SNPinfo.dta.gz
sort chr pos
rename rsid Markername
rename chr Chrom
rename pos Pos
rename ALLELE0 Bas_all
rename ALLELE1 Cod_all
rename A1FREQ Freq
rename BETA Beta
rename SE Se
outsheet Markername RSnum Chrom Pos Bas_all Cod_all Freq Beta Se Ntotal Imp_info /*
*/ using EPIC_`1'_`2'_CHRALL_JHZ_08052017.txt
end
foreach v in fev fvc pef ff {
  foreach s in smk nonsmk smkPY females males {
    extract `v' `s'
  }
}

/*
SNP	CHR	BP	GENPOS	ALLELE1	ALLELE0	A1FREQ	INFO	BETA	SE	P_BOLT_LMM_INF
*/
