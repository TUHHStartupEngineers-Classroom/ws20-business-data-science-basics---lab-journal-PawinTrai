library(tidyverse) # Main Package - Loads dplyr, purrr, etc.
library(rvest)     # HTML Hacking & Web Scraping
library(xopen)     # Quickly opening URLs
library(jsonlite)  # converts JSON files to R objects
library(glue)      # concatenate strings
library(stringi)

library(readxl)
library(lubridate)
library("writexl")


bikes_tbl <- read_excel("00_data/01_bike_sales/01_raw_data/bikes.xlsx") %>%
 
  separate(col    = category,
           into   = c("category.1", "category.2", "category.3"),
           sep    = " - ") %>%
  
  # Renaming columns
  set_names(names(.) %>% str_replace_all("\\.", "_"))
bikes_tbl %>%
  select(1:3)
bikes_tbl %>%
  select(model, price)
bikes_tbl %>%
  select(category_1:category_3, everything())
bikes_tbl %>%
  relocate(category_1:category_3)
?starts_with
bikes_tbl %>%
  select(starts_with("model"))
bikes_tbl %>%
   pull(price) %>%
  mean()

bikes_tbl %>%
  select(where(is.character))
bikes_tbl %>%
  select(where(is.numeric))
bikes_tbl %>%
  select(!where(is.numeric))
bikes_tbl %>%
  select(model, category_1, category_2, category_3, price) %>% 
  rename(
    Model           = model,
    `Bike Family`   = category_1,
    `Ride Style`    = category_2,
    `Bike Category` = category_3,
    `Price in Euro` = price
  )

bikes_tbl %>%
  select(model, price) %>%
  arrange(desc(price)) %>%
  View()
bikes_tbl %>%
  select(model, price) %>%
  filter(price > mean(price))
