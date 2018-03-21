y <- 10
f1 <- function(x) {
  function() {
    x +10
  }
}
f1(y)()


f2 <- function(a, b) {
  a * 10
}
f2(10, stop("This is an error!"))


f1 <- function(x, y) {
  x + y
}

f1 <- function(x, y) {
  return(x + y)
}

f1(2,3)
