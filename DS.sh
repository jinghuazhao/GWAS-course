#!/bin/bash
# 27-3-2017 MRC-Epid JHZ

awk -vchr=22 -vFS="\t" -vOFS="\t" '
 {
   if(NR==3) print "##FORMAT=<ID=DS,Number=1,Type=Float,Description=\"Genotype dosage\">"
   if(NR>4){
     $1=chr
     $9="GT:DS:GP"
     for(j=10;j<=NF;j++)
     {
       i=j
       split($j,gtgp,":")
       split(gtgp[2],g,",")
       dosage=g[2]+g[3]*2
       $i=sprintf("%s:%f:%s",gtgp[1],dosage,gtgp[2])
      }
   }
   print
}' DS.in > DS.out
