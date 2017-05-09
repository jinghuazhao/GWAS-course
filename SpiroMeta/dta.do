// 9-5-2017 MRC-Epid JHZ

insheet v1-v6 using /genetics/data/omics/EPICNorfolk/Axiom_UKB_EPICN_release_04Dec2014.fam, clear delim(" ")
keep v2   
gen FID=_n
rename v2 omicsid
sort omicsid
merge 1:1 omicsid using doc/data06062016_epicomics_dist.dta, nogen
merge 1:1 omicsid using doc/omicsdata08052017_dist.dta, nogen
rename omicsid id
replace fev=fev/100
replace fvc=fvc/100
replace pef=pef/100
gen ff=fev/fvc
gen agesq=age*age
gen smk=.
replace smk=1 if cigstat==3
replace smk=2 if cigstat==1|cigstat==2
merge 1:1 id using doc/MDS-PCA/EPICNorfolk, nogen
forval i=1/10 {
  replace PC`i'=1000*PC`i'
}
keep FID id sex age agesq height fev fvc pef ff cigstat smk asthma inc_resp_copd packyear2010 PC1-PC10 ethnic
sort FID
saveold dta, replace
drop if ethnic!=1
program invnorm
  gen `1'_`3'=.
  save tmp, replace
  forval s=1/2 {
    use tmp if `3'==`s'
    regress `1' `2'
    local N1=e(N)+1
    predict tt, resid
    pctile p`1'=tt, nq(`N1') genp(p_`1')
    replace `1'_`3'=invnormal(p_`1'/100)
    drop tt p`1' p_`1'
    save tmp`s', replace
  }
  use tmp1
  append using tmp2
end
// do sex first as it doesn't have missing data
invnorm fev "age agesq height PC1-PC4" sex
invnorm fvc "age agesq height PC1-PC4" sex
invnorm pef "age agesq height PC1-PC4" sex
invnorm ff "age agesq height PC1-PC4" sex
invnorm fev "sex age agesq height PC1-PC4" smk
invnorm fvc "sex age agesq height PC1-PC4" smk
invnorm pef "sex age agesq height PC1-PC4" smk
invnorm ff "sex age agesq height PC1-PC4" smk
program invnormPY
  gen `1'_smkPY=.
  regress `1' sex age agesq height PC1-PC4 packyear2010 if smk==2 & fev+fvc+packyear2010!=.
  local N1=e(N)+1
  predict tt, resid
  pctile p`1'=tt, nq(`N1') genp(p_`1')
  replace `1'_smkPY=invnormal(p_`1'/100)
  drop tt p`1' p_`1'
end
invnormPY fev
invnormPY fvc
invnormPY pef
invnormPY ff
rename id IID
save tmp, replace
use dta
keep FID id
rename id IID
merge 1:1 IID using tmp
sort FID
mvencode _all, mv(-9)
foreach f in fev fvc pef ff {
  foreach s in nonsmk {
    gen `f'_`s'=`f'_smk
  }
  foreach s in females males {
    gen `f'_`s'=`f'_sex
  }
}
outsheet FID IID using impute.id, noname noquote replace
outsheet FID IID fev_nonsmk fvc_nonsmk pef_nonsmk ff_nonsmk using nonsmk.dat if smk==1, noquote replace
outsheet FID IID fev_smk fvc_smk pef_smk ff_smk using smk.dat if smk==2, noquote replace
outsheet FID IID fev_smkPY fvc_smkPY pef_smkPY ff_smkPY using smkPY.dat if smk==2 & fev+fvc+packyear2010!=., noquote replace
outsheet FID IID fev_females fvc_females pef_females ff_females using females.dat if sex==2, noquote replace
outsheet FID IID fev_males fvc_males pef_males ff_males using males.dat if sex==1, noquote replace
