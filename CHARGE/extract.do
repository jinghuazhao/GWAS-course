// 21-12-2016 MRC-Epid JHZ

program define extract
    local rt `1'.`2'
    shell gunzip -c quicktest/quicktest.OMICS-EPIC_v1kg.`1'.G-`2'.All.txt.gz > quicktest/`rt'.txt
    insheet using quicktest/`rt'.txt, delim(" ") case clear
    duplicates tag id2, gen(dup)
    drop if id1=="---" & dup==1
    sort chr pos
    gen str1 STRAND="+"
    rename meanAA N0
    rename meanAB N1
    rename meanBB N2
    gen N=N0+N1+N2
    gen EAF=(N2+0.5*N1)/N
    rename id2 rsID
    rename chr CHR
    rename pos POS
    rename alleleA NON_EFFECT_ALLELE
    rename alleleB EFFECT_ALLELE
    rename rSqHat IMPUTATION
    rename snpbeta BETA_SNP
    rename snpse SE_SNP
    rename snpp P_SNP
    rename interactionbeta BETA_INT
    rename interactionse SE_INT
    rename interactionp P_INT
    rename covsnpinteraction COVAR_SNP_INT
    gen CPTID=string(CHR)+":"+string(POS,"%12.0f")
    replace CPTID=CPTID+":ID" if EFFECT_ALLELE=="I"|EFFECT_ALLELE=="D"
    merge m:1 CPTID using `3'.dta
    drop if _merge!=3
    outsheet rsID CHR POS STRAND EFFECT_ALLELE NON_EFFECT_ALLELE EAF IMPUTATION /*
          */ BETA_SNP SE_SNP P_SNP BETA_INT SE_INT P_INT COVAR_SNP_INT /*
          */ using EPIC.EA.`rt'.out, replace noquote
    shell sed 's/NA/./g' EPIC.EA.`rt'.out |gzip -c > EPIC.EA.`rt'.txt.gz
    erase EPIC.EA.`rt'.out
    erase quicktest/`rt'.txt
end
cd /genetics/data/gwas/21-11-16
foreach E in SOMECOL GRADCOL PA {
  foreach v in SBP DBP MAP PP HDL TG LDL {
      if "`E'"=="PA" & inlist("`v'","SBP","DBP","MAP","PP") {
        di "skipping `v'-`E'"
      }
      else {
        local d1 "PA"
        if inlist("`E'","SOMECOL","GRADCOL") local d1 "Education" 
        local d2 "Lipids"
        if inlist("`v'","SBP","DBP","MAP","PP") local d2 "BP"
        di "`v' `E' `d1'-`d2'/`d1'.`d2'"
        extract `v' `E' `d1'-`d2'/`d1'.`d2'
      }
  }
}
