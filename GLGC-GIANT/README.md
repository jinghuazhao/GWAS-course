# Utilities from the latest GLGC/GIANT contribution

`invnorm.txt` describes how to do Inverse Normal transformation.

For association testing, VCF file with a dosage (DS) field is needed for `rvtests` and this is furnished by the following example to VCF file converted from `(b)gen`  via `qctool`.

File    | Description 
--------|------------
`DS.in` | first few lines from .bgen to .vcf via qctool 1.5
`DS.sh` | code to add DS field in the .vcf
`DS.out`| the new .vcf

This files below are the actual code for analysis of HRC-imputed data, so, the paths and Sun grid engine (`sge`)  are specific to our Linux clusters.

Program  | Description
----------|--------------------------------------
HRC_id.sh | list individual IDs from vcf
HRC_st.sh | convert bgen to vcf
HRC_main.sh | perform major file operations
HRC_kin.sh | data preparation and kinship calculation
rvtest.sh | obtain lists of jobs for 12 traits
HRC_rvtest.qsub | rare variant analysis
HRC_rvtest.subs | rare variant analysis

The example use of the `DS.sh` files above is as follows: File `st.subs` is called by `HRC_st.sh` and also used for 1KG data (not shown here) both according to `qctool` v1.5; its variaion `HRC_st.v4.2` is appropriate for `qctool` v2 which generates VCF 4.2 format file.

It turned out the `--meta score, cov` option is very computer-intensive, so should only be used for the trait with maximum sample size, or HEIGHT in this case.

A few remarks are worthwhile.

First, our study already has the HRC imputed data before the call for contribution but in bgen formats. A consequence of this work was that the VCF files as generated from `qctool` does not contain the dosage field (DS) as required by `rvtests --dosage DS`. We therefore hard-edited the VCF files by an `awk` script after the developers did not provide an answer for us. Besides, within `HRC_kin.sh` the command `bcftools view` has flag `-O v` rather than `-O u` which cannot generate appropriate input the `vcf2kinship`.

The execution time for `vcf2kinship` is prohibitively long, therefore `plink2.sh` is written to compromise.
