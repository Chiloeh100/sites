
# 1. Create and Display Vectors
a = c(1, 2, 5, 3, 4, 0, -1, -3)
b = c("Red", "Green", "White")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

print(a)
print(typeof(a))

print(b)
print(typeof(b))

print(c)
print(typeof(c))

# Sample Output:
# [1]  1  2  5  3  4  0 -1 -3
# [1] "double"
# [1] "Red"   "Green" "White"
# [1] "character"
# [1]  TRUE  TRUE  TRUE FALSE  TRUE FALSE
# [1] "logical"


# 2. First 10 Fibonacci Numbers
Fibonacci = numeric(10)
Fibonacci[1] = 1
Fibonacci[2] = 1

for (i in 3:10) {
  Fibonacci[i] = Fibonacci[i - 2] + Fibonacci[i - 1]
}

print("First 10 Fibonacci numbers:")
print(Fibonacci)

# Sample Output:
# [1] "First 10 Fibonacci numbers:"
# [1]  1  1  2  3  5  8 13 21 34 55


# 3. Find Factors of a Number
n = 12
cat("The factors of", n, "are:\n")
for (i in 1:n) {
  if (n %% i == 0) {
    print(i)
  }
}

# Sample Output:
# The factors of 12 are:
# [1] 1
# [1] 2
# [1] 3
# [1] 4
# [1] 6
# [1] 12


# 4. Random Numbers in Normal Distribution and Count Occurrences
n = floor(rnorm(1000, 50, 100))

print('List of random numbers in normal distribution:')
print(n)

t = table(n)
print("Count occurrences of each value:")
print(t)

# Sample Output:
# [1] "List of random numbers in normal distribution:"
#  -239 -237 -221 -217 -212 -207 -205 -204 -202 -201  ...





# 5. Read and Display Content of a CSV File
source_data = read.csv(file="path_to_your_file.csv", header=TRUE, sep=",")
print("Content of the .csv file:")
print(source_data)

# Sample Output:
# [1] "Content of the .csv file:"
#   Name    Age Gender
# 1 John     28    M
# 2 Alice    24    F
# 3 Robert   35    M
# 4 Maria    30    F


# 6. Get All Prime Numbers Up to a Given Number
n = 12
if (n >= 2) {
  prime_nums = c()
  for (i in 2:n) {
    is_prime = TRUE
    for (j in 2:(i - 1)) {
      if (i %% j == 0) {
        is_prime = FALSE
        break
      }
    }
    if (is_prime) {
      prime_nums = c(prime_nums, i)
    }
  }
  print(prime_nums)
} else {
  print("Input number should be at least 2.")
}

# Sample Output:
# [1] 2 3 5 7 11



# 7. Create and Print an Array
v1 = c(1, 3, 5, 7)
v2 = c(2, 4, 6, 8, 10)

arra1 = array(c(v1, v2), dim = c(3, 3, 2))

print(arra1)

# Sample Output:
# , , 1
#
#      [,1] [,2] [,3]
# [1,]    1    7    2
# [2,]    3    1    4
# [3,]    5    3    6
#
# , , 2
#
#      [,1] [,2] [,3]
# [1,]    7    2    8
# [2,]    1    4   10
# [3,]    3    6    1




# 8. Create and Print a List
l = list(
  c(1, 2, 2, 5, 7, 12),
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2)
)

print("Content of the list:")
print(l)

# Sample Output:
# [1] "Content of the list:"
# [[1]]
# [1]  1  2  2  5  7 12
#
# [[2]]
# [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
#
# [[3]]
#      [,1] [,2]
# [1,]    3    1
# [2,]   -8   -3


# 9. Create a Simple Bar Plot of Marks
marks = c(70, 95, 80, 74)

barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Math.", "Hist."),
        col = "darkred",
        horiz = FALSE)

# Sample Output:
# [A bar plot will be displayed comparing marks of 4 subjects]



# 10. Create Bell Curve of Random Normal Distribution
n = floor(rnorm(10000, 500, 100))
t = table(n)

barplot(t)

# Sample Output:
# [A bar plot will be displayed in the shape of a bell curve]


# 11. Compute Sum, Mean, and Product of a Vector
nums = c(10, 20, 30)

print('Original vector:')
print(nums)

sum_nums = sum(nums)
mean_nums = mean(nums)
prod_nums = prod(nums)

print(paste("Sum of vector elements:", sum_nums))
print(paste("Mean of vector elements:", mean_nums))
print(paste("Product of vector elements:", prod_nums))

# Sample Output:
# [1] "Original vector:"
# [1] 10 20 30
# [1] "Sum of vector elements: 60"
# [1] "Mean of vector elements: 20"
# [1] "Product of vector elements: 6000"




# 12. Create a DataFrame and Display Summary
Employees = data.frame(
  Name = c("Anastasia S", "Dima R", "Katherine S", "JAMES A", "LAURA MARTIN"),
  Gender = c("M", "M", "F", "F", "M"),
  Age = c(23, 22, 25, 26, 32),
  Designation = c("Clerk", "Manager", "Executive", "CEO", "ASSISTANT"),
  SSN = c("123-34-2346", "123-44-779", "556-24-433", "123-98-987", "679-77-576")
)

print("Summary of the data:")
print(summary(Employees))

# Sample Output:
# [1] "Summary of the data:"
#        Name           Gender       Age          Designation         SSN           
#  Anastasia S:1   F:2   Min.   :22.0   ASSISTANT:1   123-34-2346:1  
#  Dima R      :1   M:3   1st Qu.:23.0   CEO      :1   123-44-779 :1  
#  Katherine S:1         Median :25.0   Clerk    :1   123-98-987 :1  
#  JAMES A     :1         Mean   :25.6   Executive:1   556-24-433 :1  
#  LAURA MARTIN:1         3rd Qu.:26.0   Manager  :1   679-77-576 :1  
#                       Max.   :32.0                               

