{
  FS=OFS="\t"
  if(NR==1) Ntotal="Ntotal"
  else if(NR>1)
  {
    $3=chr
    Ntotal=$9+$10+$11
  }
  print $3,$4,Ntotal,$19
}
