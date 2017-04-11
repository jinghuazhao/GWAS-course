This directory contains code for the GLGC/GIANT HRC analysis, which has a flavour of `GWAS in action`. For this reason, the actual instead of the generic paths were used. The implementation also uses Sun grid engine (`sge`) on our Linux clusters.

Program  | Description
----------|--------------------------------------
HRC_id.sh | list individual IDs from vcf
HRC_st.sh | convert bgen to vcf
HRC_main.sh | perform major file operations
HRC_kin.sh | Prepare data for kinship calculation

File `st.subs` is called by `HRC_st.sh` and also appropriate for 1KG data (now shown here); its variaion `HRC_st.v4.2` is appropriate for `qctool2` which generates VCF 4.2 format file.

A few remarks are worthwhile.

First, our study already has the HRC imputed data before the call for contribution but in bgen formats. A consequence of this work was that the VCF files as generated from `qctool` does not contain the dosage field (DS) as required by `rvtests --dosage DS`. We therefore hard-edited the VCF files by an `awk` script after the developers did not provide an answer for us. Besides, within `HRC_kin.sh` the command `bcftools view` has flag `-O v` rather than `-O u` which cannot generate appropriate input the `vcf2kinship`.
