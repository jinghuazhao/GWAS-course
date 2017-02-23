#!/bin/bash
# 23-2-2017 MRC-Epid JHZ

rt=/genetics/bin/hess
rt2=/genetics/bin/hess/tests
for chr in $(seq 22)
do
  for trait in BUA VOS
  do
     sge "/bin/bash hess.subs $chr $trait $rt $rt2"
  #  try the following line if there is no sge
  #  /bin/bash hess.subs $chr $trait $rt $rt2 &
  done
done
# for chr in $(seq 22); do rm $chr BUA-$chr VOS-$chr; done

# parallel -j10 -C' ' '/bin/bash hess.subs {1} {2} /genetics/bin/hess /genetics/bin/hess/tests' ::: $(seq 22) ::: BUA VOS
