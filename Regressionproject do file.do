cd "C:\Users\jerem\Desktop\Econ 108 lab section"
log using Regressionproject., replace

cap log close

gen Erating=.

replace Erating=1 if Rating=="E"
replace Erating=2 if Rating=="M"
replace Erating=3 if Rating=="T"
replace Erating=4 if Rating=="E10+"
replace Erating=5 if Rating=="AO"
replace Erating=6 if Rating=="RP"
replace Erating=0 if Erating==.

gen ratedE=1 if Erating==1
gen ratedM=1 if Erating==2
gen ratedT=1 if Erating==3
gen ratedE10=1 if Erating==4
gen ratedAO=1 if Erating==5
gen ratedRP=1 if Erating==6
gen Norating=1 if Erating==0

reg NA_Sales ratedE, robust
outreg2 using Regressionproject, excel replace

reg NA_Sales ratedM, robust
outreg2 using Regressionproject, excel

reg NA_Sales ratedT, robust
outreg2 using Regressionproject, excel

reg NA_Sales ratedE10, robust 
outreg2 using Regressionproject, excel

reg NA_Sales ratedRP, robust
outreg2 using Regressionproject, excel

replace ratedE=0 if ratedE==.
replace ratedM=0 if ratedM==.
replace ratedT=0 if ratedT==.
replace ratedE10=0 if ratedE10==.
replace ratedAO=0 if ratedAO==.
replace ratedRP=0 if ratedRP==.

reg EU_Sales ratedE, robust
outreg2 using Regressionproject, excel

reg EU_Sales ratedM, robust
outreg2 using Regressionproject, excel

reg EU_Sales ratedT, robust
outreg2 using Regressionproject, excel

reg EU_Sales ratedE10, robust
outreg2 using Regressionproject, excel

reg EU_Sales ratedRP, robust
outreg2 using Regressionproject, excel

reg EU_Sales ratedAO, robust
outreg2 using Regressionproject, excel

*JP sales reg
reg JP_Sales ratedE, robust
outreg2 using Regressionproject, excel

reg JP_Sales ratedM, robust
outreg2 using Regressionproject, excel

reg JP_Sales ratedT, robust
outreg2 using Regressionproject, excel

reg JP_Sales ratedE10, robust
outreg2 using Regressionproject, excel

reg JP_Sales ratedRP, robust
outreg2 using Regressionproject, excel

reg JP_Sales ratedAO, robust
outreg2 using Regressionproject, excel

