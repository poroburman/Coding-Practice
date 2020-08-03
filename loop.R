# while loop
while (FALSE) {
        print("Hello")
}

counter <- 1
while (counter < 12) {
        print(counter)
        counter <- counter + 1
}

# for loop
for (i in 5:10) {
        print("hello r")
}

# if loop
rm(answer)
x <- rnorm(1)
if(x > 1){
        answer <- "Greater than 1"
} else if (x >= -1){
        answer <- "Between -1 and 1"
        } else{
                answer <- "Less than -1"
        }
#===============================================================================
# iris dataset
sepal.length_greater_than_5 <- c()
for(i in iris$Sepal.Length){
        if(i > 5){
                sepal.length_greater_than_5 <- c(sepal.length_greater_than_5, i)
        }
        
}

sepal.width_less_than_3 <- c()
for(i in iris$Sepal.Width){
        if(i < 3){
                sepal.width_less_than_3 <- c(sepal.width_less_than_3, i)
        }
}

petal.length_greater_than_4 <- c()
for(i in iris$Petal.Length){
        if(i > 4){
                petal.length_greater_than_4 <- c(petal.length_greater_than_4, i)
        }
}

petal.width_greater_than_2 <- c()
for(i in iris$Petal.Width){
        if(i > 2.0){
                petal.width_greater_than_2 <- c(petal.width_greater_than_2, i)
        }
}
