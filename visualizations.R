# import dataset
movie_ratings <- read.csv("movie_ratings.txt")

# view
colnames(movie_ratings) <- c("Film", "Genre", "CriticalRating", "AudienceRating",
                             "BudgetMillions", "Year")
str(movie_ratings)
summary(movie_ratings)

# convert 'year' to factor
movie_ratings$Year <- factor(movie_ratings$Year)
summary(movie_ratings)

# ggplot2
library(ggplot2)

ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating))

ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating)) + 
        geom_point()

ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating,
                                 colour = Genre)) + 
        geom_point()

ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating,
                                 colour = Genre, size = BudgetMillions)) + 
        geom_point()

p <- ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating,
                                      colour = Genre, size = BudgetMillions))

p + geom_point(aes(size = CriticalRating))

p + geom_point(aes(colour = BudgetMillions))

p + geom_point(aes(x = BudgetMillions)) + 
        xlab("Budget Millions")

p + geom_line(size = 1) + geom_point()

r <- ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating))
r + geom_point()

# mapping color to a variable
r + geom_point(aes(colour = Genre))

# setting color
r + geom_point(colour = "DarkGreen")

# histograms and density plots
s <- ggplot(data = movie_ratings, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)

s + geom_histogram(binwidth = 10, aes(fill = Genre))
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

s + geom_density(aes(fill = Genre), position = "stack")

t <- ggplot(data = movie_ratings)
t + geom_histogram(binwidth = 10, aes(x = CriticalRating),
                   fill = "White", colour = "Blue")

u <- ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating,
                                      colour = Genre))
u + geom_point() + geom_smooth(fill = NA)

u <- ggplot(data = movie_ratings, aes(x = Genre, y = AudienceRating,
                                      colour = Genre))
u + geom_boxplot()

u + geom_boxplot(size = 1.2) + geom_point()

u + geom_boxplot(size = 1.2) + geom_jitter()

u + geom_jitter() + geom_boxplot(size = 1.2)

u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)

# facets
v <- ggplot(data = movie_ratings, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill = Genre),
                   colour = "Black") + 
        facet_grid(Genre~., scales = "free")

w <- ggplot(data = movie_ratings, aes(x = CriticalRating, y = AudienceRating,
                                      colour = Genre))
w + geom_point(size = 3) + facet_grid(Genre~.)

w + geom_point(size = 3) + facet_grid(.~Year)

w + geom_point(size = 3) + facet_grid(Genre~Year)

w + geom_point(aes(size = BudgetMillions)) + 
        facet_grid(Genre~Year)