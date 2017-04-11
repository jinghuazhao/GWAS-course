This directory contains code for the HRC analysis, which has a flavour of `doing the real thing`.

program  | Description
----------|--------------------------------------
HRC_id.sh | list individual IDs from vcf
HRC_st.sh | convert bgen to vcf
HRC_main.sh | perform major file operations
HRC_kin.sh | Prepare data for kinship calculation

File `st.subs` is called by `HRC_st.sh` and its variaion `HRC_st.v4.2` is appropriate for `qctool2` which generates VCF 4.2 format file.

A few remarks are worthwhile.

First, our study already has the HRC imputed data before the GLGC/GIANT call for contribution but in bgen formats. A consequence of this work was that the VCF files as generated from `qctool` does not contain the dosage field as required by `rvtests`. We therefore hard-edited the VCF files by an `awk` script when the developers did not provide an answer for us. Besides, within `HRC_kin.sh` the command `bcftools view` has flag `-O v` rather than `-O u` which cannot generate appropriate input the `vcf2kinship`.
