Shrine et al. (2019). New genetic signals for lung function highlight pathways and chronic obstructive pulmonary disease associations across multiple ancestries. *Nature Genetics* 51, 481–493

### Rationale for high yield of significant SNPs

1. implication of multiple molecules in each pathway will be needed to build an accurate picture of the pathways underpinning development of COPD.
2. not all proteins identified will be druggable.
3. combining information across multiple variants can improve prediction of disease susceptibility.

### Aims

1. to generate a high yield of genetic markers associated with lung function; 
2. to confirm and fine-map previously reported lung function signals; 
3. to investigate the putative causal genes and biological pathways through which lung function–associated variants act, and their wider pleiotropic effects on other traits;
4. to generate a weighted genetic risk score for lung function and test its association with COPD susceptibility in individuals of European and other ancestries.

### Materials

* Outcome
  * FEV1. forced expired volume in 1 second.
  * FVC. forced vital capacity.
  * FEV1/FVC.
  * PEF. Peak expiratory flow.
* Data. 321,047 UKB (ST1) + 79,055 SpiroMeta (ST2, ST3)

### Methods

* association model. LMM with BOLT-LMM
* putative causal genes. ANNOVAR, SIFT, PolyPhen-2|CADD/VEP, PATHMM. 99\% credible set, deleterious, eQTL (lung, blood GTEx), pQTL (INTERVAL) excluding HLA region
* explained heritabilities (assuming h2=0.4). Approximated by sum of the variances of regression terms.
* Tiers of signals (19,819,130 SNPs)

tiers | stage | P      | UKB   | SpiroMeta  | counts | follow-up  | Suppl.
------|-------|--------|-------|------------|--------|------------|---------
1     |  two  | 5e-9   | 5e-9  | 1e-3       | 99     |  yes       | SF2/ST4
2     |  one  | 5e-9   | <1e-3 | <1e-3      | 40     |  yes       | SF2/ST4
3     |  one  | 5e-9   | >1e-3 | >1e-3      | 323 + 5 (chromosome X)  |  no  | ST5

* Pathway analysis. ConsensusPathDB.
* Functional enrichment analysis.
  * LD-score regression
  * DNase I hypersensitive site hotspots with GARFIELD.
  * DeepSEA. chromatic effect in lung-related cell lines.
* Drug targets. Drug-Gene Interaction Database, http://www.dgidb.org
* GRS.
  * UKB and China Kadoorie Biobank.
  * Interaction with smoking.
  * GRS ~ COPD in addtional five COPD case-control studies.
* Pleiotropy and PheWAS. 279 loci on 2,411 traits.

Only rs193686 was associated with smoking behaviour.

### Findings

* 279 signals (ST9)
* 107 putative causal genes identified (Table 1).
* heritability. \& interaction with ever-smoking. 140 previously identified and 1e-5 in UKB as 5.0\%, 3.4\%, 9.2\% and 4.5\% vs 139 new signals (Figure 1) 4.3\%, 3.3\%, 3.9\% and 3.3\%. No interaction found.
* Pathway results in ST15.
* Functional enrichment showed heritabilities are enriched in histone marks
* GRS.
  * ~ decrease in lung function and increase in COPD (Figure 3a).
  * Effect sizes were similar in COPD case-control studies (Figure 3b, ST20)
  * similarity in deciles (Figure 3c).
  * 279 GRS ~ respiratory traits (Figure 5a) and celiac disease (Figure 5b).
* PheWAS (Figure 4, ST23). 85 ~ standing height but no correlation with GIANT data.

### Highlights

* doubled the number of SNPs.
* first study on PEF, 133/279 associated.
* SNP-smoking interaction study.
* GRS predictive of lung function and also COPD.
* eQTL/pQTL-related work.
* PheWAS.

### Additional information

The following paper gave SNP-based heritability estimates of FEV1, FVC and FEV/FVC as 0.50, 0.54 ans 0.66, respectively.

Klimentidis YC, Vazquez AI, de Los CG, Allison DB, Dransfield MT, Thannickal VJ (2013).
“Heritability of Pulmonary Function Estimated from Pedigree and Whole-Genome Markers.”
*Frontiers in Genetics*, 4, 174. doi:10.3389/fgene.2013.00174.

PheWAS was approved for FHS as with clarite.
