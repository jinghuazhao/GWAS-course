# A collection of utilities for GWAS

## hess

The scripts here are developed to facilitate HESS as available from https://github.com/huwenboshi/hess.

The scripts were initially tested using EPIC-Norfolk GWAS, for which `test.sh`, `test.subs` and `test.awk` are created to work on `/genetics/bin/hess/tests` directory and later on changed to /genetics/data/gwas/8-7-15/QUS.

Further work is done to make it generic including examples for height and QUS meta-analyses. These only involve SNP ids the as sorting key. The scripts are `hess.sh`, `hess.subs` and `hess.awk`.

To set it up, modify file locations in hess.sh as appropriate for your system.

The syntax is as follows,

hess.sh `GWAS-summary-statistics`

where `GWAS-summary-statistics` has these columns: rsID, pos, A1, A2, Z, N.

NOTE finally that HESS describes bed file as with UCSC (https://genome.ucsc.edu/).

## utilities

`invnorm.txt` describes how to do Inverse Normal transformation.

`in.awk` is an `awk` implementation of `in`.

There have been calls for adding dosage (DS) field in vcf from `IMPUTE2` to furnish analysis via `rvtests`.


File    | description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5

`DS.sh` | code to add DS field in the .vcf

`DS.out`| the new .vcf
