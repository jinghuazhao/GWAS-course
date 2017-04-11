This directory contains code for the HRC analysis.

program  | Description
----------|--------------------------------------
HRC_id.sh | list individual IDs from vcf
HRC_st.sh | convert bgen to vcf
HRC_main.sh | perform major file operations
HRC_kin.sh | Prepare data for kinship calculation

`st.subs` is called by `HRC_st.sh` and its variaion `HRC_st.v4.2` is appropriate for `qctool2` which generates VCF 4.2 format file.
