# test_bounds

testthat::context('bounds')

testthat::test_that('from bind to bounds', {
  # works with R typeof 'closure'
  printr <- bind(print, 'hello world')
  testthat::expect_output(printr(), 'hello world')
  # works with primitive
  testthat::expect_type(bind(sum, 5L, 2L), 'closure')
  # works with anonymous
  testthat::expect_identical(bind(function(a, b) a + b, 5L, 2L)(), 7L)
  # isBound pt1
  testthat::expect_identical(isBound(printr), TRUE)
  # isBound pt2
  testthat::expect_identical(isBound(print), FALSE)
  # primitives can not be bounds
  testthat::expect_identical(isBound(sum), FALSE)
  # works with rudimentary body
  y <- 1L
  yo <- function() y
  testthat::expect_identical(isBound(yo), TRUE)
  # does not fail on nonsense
  testthat::expect_identical(isBound(function() {}), FALSE)
  # remembers assignments
  fixd <- function() {y <- 3; y - 1}
  testthat::expect_identical(isBound(fixd), FALSE)
  # detects super assignments
  boo <- function() {a<<-2L; a}
  testthat::expect_identical(isBound(boo), TRUE)
  # handles equal assignments
  voo <- function() {a=2L; a}
  testthat::expect_identical(isBound(voo), FALSE)
  # handles comparisons
  coo <- function() {a==2L; a}
  testthat::expect_identical(isBound(coo), TRUE)
})