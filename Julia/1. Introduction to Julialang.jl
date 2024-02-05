# Introduction to Julialang

## Data Types



### Strings 

# Strings are used to represent text data.
# They can be defined using single quotes (''), double quotes (""),
# or triple quotes (""").
# The length() function returns the number of characters in a string.
# The count() function returns the number of occurrences of a substring in a string.

s1 = "I am a string"  # defining a string using double quotes
s2 = """I am also a string"""  # defining a string using triple quotes

length(s2)  # returns the number of characters in s2

count("a", s2)  # returns the number of occurrences of "a" in s2

DNA = "AATGGCC"

count("A", DNA)  # returns the number of occurrences of "A" in DNA

DNA[3]  # accessing the character at index 3 in DNA


## Vectors

# Vectors are used to store collections of elements.
# They can be defined using square brackets [] or the `Vector` constructor.
# The length() function returns the number of elements in a vector.
# Elements in a vector can be accessed using indexing.

v1 = [1, 2, 3, 4, 5]  # defining a vector using square brackets

v2 = Vector([6, 7, 8, 9, 10])  # defining a vector using the Vector constructor

length(v1)  # returns the number of elements in v1

v1[3]  # accessing the element at index 3 in v1


## Ask Copilot to explain Tuples

## Ask Copilot to explain Dictionaries

## Ask Copilot to explain Matrices

## Ask Copilot to explain DataFrames

## Ask Copilot to explain Matrix Operations

## Ask Copilot to explain how to write a function


## Why to use Julia instead of R?

using RCall

using Pkg
Pkg.add("RCall")

using RCall

# you can also run R code in Julia using the R"""


R"

# make a for loop function in R

my_fun <- function(Y) {
  x= 0
  for (i in 1:Y) {
    x = x + i
  }
  return(x)
}

"

# time the speed of RCall


@time R"

# make a for loop function in R

my_fun(10e9)

"

# now do the same in Julia

function my_fun(Y)
  x = 0
  for i in 1:Y
    x += i
  end
  return x
end

my_fun(10)

@time my_fun(10e9)


# Run the Pandoc command to convert the Markdown document to PDF
run(`pandoc $input_file -o $output_file`)
