# test_bounds

testthat::context('bounds')

testthat::test_that('from bind to bounds', {
  # works with primitive
  testthat::expect_type(bind(sum, 5L, 2L), 'closure')
  # works with anonymous
  testthat::expect_type(bind(function(a, b) a + b, 5L, 2L), 'closure')
  # works with R typeof 'closure'
  printr <- bind(print, 'hello world')
  testthat::expect_output(printr(), 'hello world')
  # isBound pt1
  testthat::expect_identical(isBound(printr), TRUE)
  # isBound pt2
  testthat::expect_identical(isBound(print), FALSE)
  # primitives can not be bounds
  testthat::expect_identical(isBound(sum), FALSE)
})