context("reorder() in decending order")

# 1
test_that("Decending order.", {
  x <- factor(c("a", "b", "c","a"))
  expect_equal(levels(fac_reorder(x)), c("c", "b", "a"))
})

# 2
test_that("Decending order.", {
  x <- factor(c("D", "E", "C","A"))
  expect_equal(levels(fac_reorder(x)), c("E", "D", "C", "A"))
})

# 3
test_that("Error flag.", {
  x <- is.character(c("a", "b", "c","d"))
  expect_error(fac_reorder(x))
})
