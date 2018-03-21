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


f <- function(x) x^2
f(3)
formals(f)
body(f)
environment(f)

formals(f) <- alist(x=5)
f()

body(f) <- expression(x^3+100)
f(5)
#limpiar directorio de trabajo 
rm(list=ls())


f <- function() {
  x <- 1
  y <- 2
  c(x, y)
}

f()

rm(f)
#################
x <- 2
y <- 500

g <- function() {
  y <- 1
  c(x, y)
}

g()

rm(x, g)
################3

x <- 1
y <- 100
h <- function() {
  y <- 2
  i <- function() {
    z <- 3
    c(x, y, z)
  }
  i()
}
h()
rm(x, h)
###################
j <- function(x) {
  y <- 2
  function() {
    c(x, y)
  }
}
k <- j(1)
k()
rm(j, k)
##########
l <- function(x) x + 1

m <- function() {
  l <- function(x) x * 2
  l(10)
}

m()

rm(m, l)
##############

n <- function(x) x / 2

o <- function() {
  n <- 10
  n(n)
}

o()

rm(n, o)