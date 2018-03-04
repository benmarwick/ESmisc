context("requests")




test_that("to_number returns integer from string.", {
  result <- to_number("one thousand two hundred ànd thirty four")

  expect_type(result, "integer")
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("one thousand two hundred and thirty four")
  target <- 1234
  expect_equivalent(result, target)
})


test_that("to_number works ok with millions from string.", {
  result <- to_number("two million four hundred and eighty two thousand one hundred and three")
  target <- 2482103
  expect_equivalent(result, target)
})


test_that("to_number error message when unexpected string.", {

  expect_error(to_number("The input is not recognized as a number."), "*unexpected input*")
})
