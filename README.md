This repository contains lecture notes and some utilities for GWAS.

## Notes

FIle | Description
-----|------------
`outlines.md`| Outlines for a workshop
`outlines.docx` | Outlines for a workshop

## Utilities from the latest GLGC/GIANT contribution

`invnorm.txt` describes how to do Inverse Normal transformation.

As with other calls, it requires  dosage (DS) field to be added in vcf when converted from `(b)gen`  to furnish analysis via `rvtests`.

File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf

The example use is in HRC-1KG directory, which also contains other relevant information.
