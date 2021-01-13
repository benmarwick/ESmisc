context("requests")


test_that("to_number returns integer from string.", {
  result <- to_number("one thousand two hundred and thirty four")
  expect_type(result, "integer")
})

test_that("to_number returns a correct translation from string: ", {
  result <- to_number("five")
  target <- 5
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("nineteen")
  target <- 19
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("thirty-seven")
  target <- 37
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("eightyfour")
  target <- 84
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("ninety nine")
  target <- 99
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("one hundred and five")
  target <- 105
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("two hundred and nineteen")
  target <- 219
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("five hundred and thirty seven")
  target <- 537
  expect_equivalent(result, target)
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("one thousand two hundred and thirty four")
  target <- 1234
  expect_equivalent(result, target)
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("forty thousand and seven")
  target <- 40007
  expect_equivalent(result, target)
})

# Ordinals

test_that("to_number returns a correct translation from string: ", {
  result <- to_number("fifth")
  target <- 5
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("nineteenth")
  target <- 19
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("thirty-seventh")
  target <- 37
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("eightyfourth")
  target <- 84
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("ninety ninth")
  target <- 99
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("one hundred and fifth")
  target <- 105
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("two hundred and nineteenth")
  target <- 219
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("five hundred and thirty seventh")
  target <- 537
  expect_equivalent(result, target)
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("one thousand two hundred and thirty fourth")
  target <- 1234
  expect_equivalent(result, target)
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("forty thousand and seventh")
  target <- 40007
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("ninety first")
  target <- 91
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("fifty second")
  target <- 52
  expect_equivalent(result, target)
})

test_that("to_number returns a correct translation from string.", {
  result <- to_number("thirty third")
  target <- 33
  expect_equivalent(result, target)
})

test_that("to number works with vector inputs.", {
  result <- to_number(c("one", "two", "forty-two"))
  target <- c(1, 2, 42)
  expect_equivalent(result, target)
})

test_that("to_number works ok with millions from string.", {
  result <- to_number("two million four hundred and eighty two thousand one hundred and three")
  target <- 2482103
  expect_equivalent(result, target)
})

test_that("to_number works ok with zero.", {
  result <- to_number("zero")
  target <- 0
  expect_equivalent(result, target)
})

test_that("to_number error message when unexpected string.", {

  expect_error(to_number("not a number"))
})
