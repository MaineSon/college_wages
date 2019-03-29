install.packages("tidyverse")
install.packages("janitor")
library(janitor)
payback <- read_csv("data/tidy_data/degrees-that-pay-back.csv") %>% 
  clean_names()
librasalaries_by_college_type <- read_csv("data/tidy_data/salaries-by-college-type.csv")degrees_that_pay_back <- read_csv("data/tidy_data/degrees-that-pay-back.csv")
salariesreg <- read_csv("data/tidy_data/salaries-by-region.csv")

library(tidyverse)

start <- ggplot(aes(x=undergraduate_major, y = starting_median_salary)) +
         geom_bar(stat = "identity",fill="steelblue")+ coord_flip() +
  #geom_text(aes(label=undergraduate_major), vjust=-0.3, size=3.5)+
  theme_minimal() + 

mid <- ggplot(payback, aes(x=undergraduate_major, y = mid_career_median_salary)) +
  geom_bar(stat = "identity",fill="steelblue")+ coord_flip() +
  #geom_text(aes(label=undergraduate_major), vjust=-0.3, size=3.5)+
  theme_minimal()
install.packages("gridExtra")
library(gridExtra)

