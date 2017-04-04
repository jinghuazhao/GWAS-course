## [Course notes](https://github.com/jinghuazhao/GWAS/blob/master/GWAS.md)

## Utilities for the latest GIANT/GLGC contribution

`invnorm.txt` describes how to do Inverse Normal transformation.

As with other calls, it requires  dosage (DS) field to be added in vcf from `IMPUTE2` to furnish analysis via `rvtests`.

File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf
