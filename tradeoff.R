par(cex=1.6)
steps <- 200

## Trans is a saturating function
transHalf <- 0.4
transMax <- 2

durHeight <- 1
durPeak <- 0.1
durDecay <- 0.5

agg <- (0:steps)/steps
trans <- transMax*agg/(transHalf+agg)

durShape <- durPeak/durDecay
durMult <- durHeight*exp(durShape)/durPeak^durShape
dur <- durMult*agg^durShape*exp(-agg/durDecay)

baseplot <- function(agg, trans){
	plot(agg, trans
		, type="l"
		, ylab ="", xlab="Aggressiveness"
		, yaxt = "n"
	)
	# axis(2, labels=FALSE)
}

baseplot(agg, trans)

baseplot(agg, trans)
lines(agg, dur, col="blue")

baseplot(agg, trans)
lines(agg, dur, col="blue")
lines(agg, dur*trans, col="red")

baseplot(agg, trans)
lines(agg, dur, col="blue")
lines(agg, dur*trans, col="red")
legend("topleft"
	, legend = c("Transmission", "Duration", "Reproduction")
	, col = c("black", "blue", "red")
	, lty=1
)


