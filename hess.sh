# 23-2-2017 MRC-Epid JHZ

rt=/genetics/bin/hess
for chr in $(seq 22)
do
  gunzip -c $rt/refpanel/1kg_phase3_chr${chr}_eur_5pct_legend.txt.gz | \
  awk '{print chr,$1,sprintf("%00000000015d",$2),$2,$3,$4}' chr=$chr | sort -k3 > 1
  for trait in BUA VOS
  do
     sge "/bin/bash hess.subs $chr $trait"
  #  try the following line if there is no sge
  #  /bin/bash hess.subs $chr $trait &
  done
  rm 1 2
done
