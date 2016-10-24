par(cex=1.6)
baseplot <- function(){
	plot(NULL, NULL
		, xlab = "Target effects"
		, ylab = "Non-target effects"
		, xlim = c(0, 1)
		, ylim = c(0, 1)
		, yaxt="n"
		, xaxt="n"
	)
}

lrarrows <- function(){
	arrows(lty = 1
		, x0 = c(0.2, 0.7)
		, y0 = c(0.1, 0.2)
		, x1 = c(0.8, 0.3)
		, col = c("red", "blue")
	)
}

udarrows <- function(){
	arrows(lty = 1
		, y0 = c(0.8, 0.6)
		, x0 = c(0.1, 0.2)
		, y1 = c(0.2, 0.4)
		, col = c("blue", "red")
	)
}

baseplot(); lrarrows(); udarrows()
