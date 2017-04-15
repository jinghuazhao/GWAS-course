This repository contains lecture notes for GWAS and some utilities.

## Notes

FIle | Description
-----|------------
`GWAS.md`| Notes including resources
`outlines.docx` | Outlines for a workshop

## Utilities from the latest GLGC/GIANT contribution

`invnorm.txt` describes how to do Inverse Normal transformation.

As with other calls, it requires  dosage (DS) field to be added in vcf when converted from `(b)gen`  to furnish analysis via `rvtests`.

File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf
