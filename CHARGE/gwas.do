// 6-12-2016 MRC-Epid JHZ

gzuse data
/*
phenotype (SBP, DBP, MAP, PP, HDL, TG and LDL) and 
lifestyle (SOMECOL, GRADCOL, PA) variables are prepared already
*/

foreach S in OMICS-EPIC {
  foreach E in SOMECOL GRADCOL {
    foreach v in SBP DBP MAP PP HDL TG LDL {
        quicktest `v', s(`S') method(robust) imp(v1kg) dirwork(/genetics/data/gwas/21-11-16/quicktest)/*
               */ cov(`E' age sex PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10) xchromosome
    }
  }
}

foreach S in OMICS-EPIC {
  foreach E in PA {
    foreach v in HDL TG LDL {
        quicktest `v', s(`S') method(robust) imp(v1kg) dirwork(/genetics/data/gwas/21-11-16/quicktest)/*
               */ cov(`E' age sex PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10) xchromosome
    }
  }
}

