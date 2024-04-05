library(ggplot2)
library(rstanarm)

data <- read.csv("data")

ggplot(data, aes(x = YearOfDeath, y = DeathCount, color = CancerType)) +
  geom_line() + 
  geom_point() + 
  labs(title = "Trends in Cancer-Related Deaths Over 20 Years",
       x = "Year of Death",
       y = "Number of Deaths") +
  theme_minimal() +
  scale_color_brewer(palette = "Set1")

model <- stan_glm(DeathCount ~ YearOfDeath + CancerType, 
                  data = data, 
                  family = poisson(link = "log"), 
                  prior = normal(0, 2.5), 
                  chains = 2, 
                  iter = 1000)

print(model)
