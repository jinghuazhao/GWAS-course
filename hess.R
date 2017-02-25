# 25-2-2017 MRC-Epid JHZ

trait <- "height"
f <- paste0(trait,".h2g")
d <-read.table(f,sep="\t",header=TRUE)
d <- within(d,pos=(start+end)/2)
require(gap)
pdf("height.pdf")
opar <- par()
par(cex=0.4)
ops <- mht.control(colors=rep(c("lightgray","lightblue"),11),srt=0,yline=2.5,xline=2,logscale=FALSE)
mhtplot2(data.frame(d[,c("chr","start","local_h2g")],gene=NA,color=NA),ops,srt=0)
axis(2)
par(opar)
dev.off()
