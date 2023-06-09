## Vectors are the most basic unit of data in R. 

## To create a vector, use the function "c" which means "concatenate."

codes <- c(380, 124, 818)
codes

## Use quotes to denote character vectors.

countries <- c("italy", "canada", "egypt")
countries

## You can also name the entries of a vector.

codes <- c(italy=380, canada=124, egypt=818)
codes

## Codes remains a numeric vector. 

class(codes)

## You can also use the names function to assign names to the entries of a vector.

names(codes) <- countries
codes

## seq is a useful function for generating sequences.

seq(1,10)

## The default of seq is to jump by 1, but you can use a third argument to change this increment. 

seq(1,10,2)

## Above, the 1 indicates the starting number, the 10 indicates the ending number, and the 2 indicates by what increment the sequence should increase for each subsequent listed value.

## A shorthand to call consequtive integers is by using a colon between two numbers.

1:10

## Subsetting allows us to access specific parts of a vector. We use square brackets to access elements of a vector.

codes [2]
codes [c(1,3)]
codes [1:2]
codes ["canada"]
codes [c("italy", "egypt")]

## Vector coercion is an attempt by R to be flexible with data types. When an entry doesn't match what R expected, R tries to guess what the coder meant before throwing an error message.

x <- c(1, "canada", 3)
x
class(x)

## R also offers functions to force a specific coercion.

x <- 1:5
y <- as.character(x)
y
as.numeric(y)

## NA is used for missing data. Missing data is a very common problem in real data sets.

x <- c("1", "b", "3")
as.numeric(x)