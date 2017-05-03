// 15-12-2016 MRC-Epid JHZ

gzuse data
gen logHDL=HDL
replace HDL=exp(HDL)
gen logTG=TG
replace TG=exp(TG)

tabulate sex
tabstat age, stat(mean sd median min max)

tabstat SBP DBP MAP PP, stat(n mean sd median min max) by(SOMECOL) columns(statistics)
tabstat SBP DBP MAP PP, stat(n mean sd median min max) by(GRADCOL) columns(statistics)

tabstat HDL logHDL TG logTG LDL LDLadj, stat(n mean sd median min max) by(SOMECOL) columns(statistics)
tabstat HDL logHDL TG logTG LDL LDLadj, stat(n mean sd median min max) by(GRADCOL) columns(statistics)

tabstat HDL logHDL TG logTG LDL LDLadj, stat(n mean sd median min max) by(PA) columns(statistics)
tabstat HDL logHDL TG logTG LDL LDLadj, stat(n mean sd median min max) by(PA) columns(statistics)

tabulate sex if TG!=.
tabstat age if TG!=., stat(mean sd median min max)

