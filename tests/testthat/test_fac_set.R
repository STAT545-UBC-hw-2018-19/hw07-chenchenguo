context("sets levels to the order in which they appear in the data")

# 1
test_that("Levels in order.", {
  x <- factor(c("a", "b", "c","a"))
  expect_equal(levels(fac_set(x)), c("a", "b", "c"))
})

# 2
test_that("Levels in order.", {
  x <- factor(c("D", "E", "C","E"))
  expect_equal(levels(fac_set(x)), c("D", "E", "C"))
})

# 3
test_that("Error flag.", {
  x <- is.character(c("a", "b", "c","d"))
  expect_error(fac_set(x))
})
