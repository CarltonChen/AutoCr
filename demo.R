library(Rcpp)
library(RcppArmadillo)

sourceCpp(file = "AutoCrCov.cpp")
load("test_data.RData")

cout = AutoCrCov(x1, x2, t1, t2, bw1, bw1, grids)[[1]]

microbenchmark::microbenchmark(
  AutoCrCov(x1, x2, t1, t2, bw1, bw1, grids)
)

# Unit: seconds
# expr      min       lq     mean   median       uq      max neval
# Aut. 3.594876 3.624322 3.689618 3.652799 3.728218 4.522803   100