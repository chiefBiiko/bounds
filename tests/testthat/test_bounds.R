# test_bounds

testthat::context('bounds')

testthat::test_that('bind works with closures and primitives', {
  # bind returns a bound closure
  testthat::expect_type(bind(sum, 5L, 2L), 
                        'closure')
  # works with all
  testthat::expect_type(bind(function(a, b) a + b, 5L, 2L), 
                        'closure')
  # ...
  catr <- bind(cat, 'hello world')
  testthat::expect_identical(catr(), 
                             NULL)
  # isBound
  testthat::expect_identical(isBound(catr), 
                             TRUE)
  # isBound does not accept primitives
  testthat::expect_error(isBound(sum))
})