tidyData <- function(x, y, ...) {
	newSet = NULL
	xTest.new = NULL
	yTest.new = NULL
	xTrain.new = NULL
	yTrain.new = NULL

	xTest.old <- data.frame(X_test)
		rownames(xTest.old) <- sample('mean', 'std')
		xTest.new <- sample(rownames(xTest.old))
		xTest.old[rownames(xTest.old) %in% xTest.new]
		rownames(rmatrix) <- xTest.new(rmatrix)
		colnames(rmatrix) <- list(colnames(xTest.new(rmatrix, do.NULL = FALSE, prefix = "activity")))

	yTest.old <- data.frame(Y_test)
		rownames(yTest.old) <- sample('mean', 'std')
		yTest.new <- sample(rownames(yTest.old))
		yTest.old[rownames(yTest.old) %in% yTest.new]
		rownames(rmatrix) <- yTest.new(rmatrix)
		colnames(rmatrix) <- list(colnames(yTest.new(rmatrix, do.NULL = FALSE, prefix = "activity")))

	xTrain.old <- data.frame(X_train)
		rownames(xTrain.old) <- sample('mean', 'std')
		xTrain.new <- sample(rownames(xTrain.old))
		xTrain.old[rownames(xTrain.old) %in% xTrain.new]
		rownames(rmatrix) <- xTrain.new(rmatrix)
		colnames(rmatrix) <- list(colnames(xTrain.new(rmatrix, do.NULL = FALSE, prefix = "activity")))

	yTrain.old <- data.frame(Y_train)
		rownames(yTrain.old) <- sample('mean', 'std')
		yTrain.new <- sample(rownames(yTrain.old))
		yTrain.old[rownames(yTrain.old) %in% yTrain.new]
		rownames(rmatrix) <- yTrain.new(rmatrix)
		colnames(rmatrix) <- list(colnames(yTrain.new(rmatrix, do.NULL = FALSE, prefix = "activity")))

	merged <- reduce(function(x, y) merge(x, y, all = TRUE))
		list(xTest.new, yTest.new, xTrain.new, yTrain.new)
		merged[complete.cases(merged),]
		newSet <- merged
}