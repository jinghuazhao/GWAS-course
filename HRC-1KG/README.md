This directory contains the actual code for the GLGC/GIANT HRC analysis. For this reason, the paths and Sun grid engine (`sge`)  are specific to our Linux clusters.

Program  | Description
----------|--------------------------------------
HRC_id.sh | list individual IDs from vcf
HRC_st.sh | convert bgen to vcf
HRC_main.sh | perform major file operations
HRC_kin.sh | data preparation and kinship calculation
HRC_rvtest.qsub | rare variant analysis
HRC_rvtest.subs | rare variant analysis

File `st.subs` is called by `HRC_st.sh` and also used for 1KG data (not shown here) both according to `qctool` v1.5; its variaion `HRC_st.v4.2` is appropriate for `qctool` v2 which generates VCF 4.2 format file.

A few remarks are worthwhile.

First, our study already has the HRC imputed data before the call for contribution but in bgen formats. A consequence of this work was that the VCF files as generated from `qctool` does not contain the dosage field (DS) as required by `rvtests --dosage DS`. We therefore hard-edited the VCF files by an `awk` script after the developers did not provide an answer for us. Besides, within `HRC_kin.sh` the command `bcftools view` has flag `-O v` rather than `-O u` which cannot generate appropriate input the `vcf2kinship`.
