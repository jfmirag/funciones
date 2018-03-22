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

#################
j <- function() {
  if (! exists("a")) {
    a <- 1
  } else {
    a <- a + 1
  }
  print(a)
}

j()
j()
a <- 50

j()
j()
################

x <- 1
y <- 2
fun <- function () {
  x <- 101
  y <<- 102
}
fun()
x
y
##################

f <- function(abcdef, bcde1, bcde2) {
  list(a = abcdef, b1 = bcde1, b2 = bcde2)
}

str(f(1, 2, 3))

###################

f <- function(abcdef, bcde1, bcde2) {
  list(a = abcdef, b1 = bcde1, b2 = bcde2)
}

str(f(2, 3, abcdef = 1))

#################
#empieza con a
f <- function(abcdef, bcde1, bcde2) {
  list(a = abcdef, b1 = bcde1, b2 = bcde2)
}

str(f(2, 3, a = 1))
#################
f <- function(abcdef, bcde1, bcde2) {
  list(a = abcdef, b1 = bcde1, b2 = bcde2)
}

str(f(1, 3, b = 1))
#################

suma <- function(a, b) a + b

argumentos <- list(a=15, b=5)

do.call(suma, argumentos)
#################

g <- function(a = 1, b = a * 2) {
  c(a, b)
}

g()

g(10)
#################

myhist <- function(x, breaks=length(x)) {
  breaks
}

myhist(runif(10))

myhist(runif(10), breaks=501)
###############

'%+%' <- function(a, b) paste(b, a, sep = " ")

"new" %+% "string"
################

'%+%'('my', 'life')

'%+%'('my', 'life', 'is', 'better')
##################
'-'(10, 2)


#########################################################################
##################### Otros ejemplos de la web ##########################
## https://www.datamentor.io/r-programming/infix-operator ###############
#########################################################################

`-`(`*`(5,3),1)

###############

`%divisible%` <- function(x,y)
{
  if (x%%y ==0) return (TRUE)
  else          return (FALSE)
}

3%divisible%2
##################

