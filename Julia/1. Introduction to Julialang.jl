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

v1[5]  # accessing the element at index 3 in v1


## Ask Copilot to explain Tuples
# Tuples are used to store collections of elements, similar to vectors.
# However, tuples are immutable, meaning their elements cannot be modified once defined.
# Tuples can be defined using parentheses () or the `Tuple` constructor.

t1 = (1, 2, 3, 4, 5)  # defining a tuple using parentheses


t2 = Tuple([6, 7, 8, 9, 10])  # defining a tuple using the Tuple constructor

length(t1)  # returns the number of elements in t1

t1[3]  # accessing the element at index 3 in t1


## Ask Copilot to explain Dictionaries

# Dictionaries

# Dictionaries are used to store key-value pairs.
# They can be defined using the `Dict` constructor or the `Dict` function.
# The keys in a dictionary must be unique.
# Elements in a dictionary can be accessed using indexing with the key.

d1 = Dict("apple" => 1, "banana" => 2, "orange" => 3)  # defining a dictionary using the Dict constructor

d2 = Dict("apple" => 1, "banana" => 2, "orange" => 3)  # defining a dictionary using the Dict function

d1["banana"]  # accessing the value associated with the key "banana" in d1

## Ask Copilot to explain Matrices



## Ask Copilot to explain DataFrames

## Ask Copilot to explain Matrix Operations

using Pkg

Pkg.add("LinearAlgebra")

using LinearAlgebra

A = rand(0:10, 4,3);

size(A)

# Add 100 to each element of A

A + 100
B = A .+ 100


# Multiply matrix A by B

A * B # not posible because the dimensions of A and B are not compatible for matrix multiplication

C = rand(0:10, 3, 4)

A * C # possible because the dimensions of A and C are compatible for matrix multiplication

## Ask Copilot to explain how to write a function


## Why to use Julia instead of R?

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
