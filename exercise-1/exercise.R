# Exercise-1
# Implement code from this book chapter: http://r4ds.had.co.nz/many-models.html

# Packages
# install.packages('modelr')
# install.packages('tidyverse')
# install.packages('gapminder')
library(gapminder)
library(modelr)
library(tidyverse)

# Initial view of the data with ggplot
gapminder %>% 
  ggplot(aes(x = year, y = lifeExp, group = country)) + 
  geom_line(alpha = 1/3)

# Look only at new zealand
nz <- filter(gapminder, country == 'New Zealand')
nz %>% 
  ggplot(aes(x = year, y = lifeExp)) +
  geom_line() +
  ggtitle('Full data = ')

nz.mod <- lm(lifeExp ~ year, data = nz)

# Better yet, write your own function to accept a country as a parameter,
# and produce the same graphics
BuildLine <- function(c){
  a <- filter(gapminder, country == c)
  p <- a %>% 
    ggplot(aes(x = year, y = lifeExp)) + 
    geom_line() +
    ggtitle(c)
  return(p)
}
# Nest the data by country/continent



# Define a statistical model, and store it in a function


# Use the `map` functionality to run the same model for each country separately


# Add additional columns to store your residuals (distance between data and prediction)


# Unnest your residual


# Plot the residuals



# Plot residuals by continent


# Use `glance` to look at model quality


# Compare model quality to continent


# View country that have an r.squared value of less than .25

