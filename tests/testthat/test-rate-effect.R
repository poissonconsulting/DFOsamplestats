test_that("rate_ci works", {
  expect_snapshot({
    rate_effect(r = integer(0), n = integer(0))
    rate_effect(r = 5, n = 10)
    rate_effect(r = c(3,7), n = 20)
    rate_effect(r = c(3,7), n = c(20,20))
    rate_effect(c(1,9), c(10,10))
    rate_effect(c(1,9), 20)
    rate_effect(c(1,9), 40)
    rate_effect(9, 10)
    rate_effect(9, 10, alternative = "greater")
    rate_effect(9, 10, alternative = "less")
    rate_effect(r = c(3,7), n = c(20,20), alternative = "greater")
    rate_effect(r = c(3,7), n = c(20,20), alternative = "less")
    rate_effect(r = c(25,35), n = c(100,100), alternative = "greater")
    rate_effect(r = c(25,35), n = c(100,100), alternative = "less")
  })
})
