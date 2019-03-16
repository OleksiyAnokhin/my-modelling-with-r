library(tidyverse)
library(broom)

options(scipen = 999)


data(mtcars)

mtcars

ols_model <- lm(hp ~ cyl, mtcars)

# ols_model_tidy <- ggplot(mtcars, aes(mpg, hp)) + geom_smooth(method = "lm") 

tidy(ols_model)

miles_per_galon <- 20
horse_power <- 324 - 8.83*miles_per_galon
horse_power

cylinder <- 6
horse_power <- 32*cylinder - 51.1
horse_power

mtcars1 <- mtcars %>% select(cyl, hp) %>% summarize(mean_hp = mean(hp), mean_cyl = mean(cyl))
mtcars1


146.7/6.18

23.74*6
