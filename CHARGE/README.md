## CHARGE gene-lifestyle interaction analysis

The analysis plan looks quite involved, but the analysis via Stata was very straightforward.

File | Description
------|------------
gwas.do | GWAS analysis
extract.do | reformat results from GWAS analysis
summary.do | summary statistics

Assuming that `data.dta.gz` has been created, `gwas.do` has a wrapper command for `QUICKTEST` to perform the analysis. As for `summary.do`, it is preferable to use `xstata`'s  `copy table` to directly copy results into `Excel`.
