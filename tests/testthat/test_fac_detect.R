context("Detect whether factors are characters")

# 1
test_that("Factor is not character.", {
  x <- factor(c("a", "b", "c","a"))
  expect_false(fac_detect(x))
})

# 2
test_that("Factor does be character.", {
  x <- factor(c("a", "b", "c","d"))
  expect_true(fac_detect(x))
})

# 3
test_that("Error flag.", {
  x <- is.character(c("a", "b", "c","d"))
  expect_error(fac_detect(x))
})
