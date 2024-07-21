library(readxl)
#
ipack <- data.frame(
  pk = 1:5,
  A = letters[1:5],
  B = LETTERS[1:5],
  C = rnorm(5)
)
ipack

epack <- data.frame(
  pk = 10:1,
  D = letters[1:10],
  E = LETTERS[1:10],
  F = rnorm(10)
)
epack

unique(epack$pk) %>% length()

merge(ipack, epack, by = "pk", all = TRUE)

a <- read_excel(file.choose())
b <- read_excel(file.choose())

b %>% head()

w <- merge(a, b, by = "Manzana", all = TRUE)

a %>% names()
b %>% names()

w %>% names()

a %>% dim()
b %>% dim()
w %>% dim()


w %>%
  head(20) %>%
  view()
