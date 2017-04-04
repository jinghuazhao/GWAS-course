## Course notes is with `GWAS.md`.

## Utilities for the latest GIANT/GLGC contribution.

`invnorm.txt` describes how to do Inverse Normal transformation.

There have been calls for adding dosage (DS) field in vcf from `IMPUTE2` to furnish analysis via `rvtests`.

File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf
