
test_that("says drought", {
  #fake dataset
  temp_test_data =
    data.frame(
      Date = c(1895:2019),
      Value = sample(1:1, 125, replace = T)
    )

  expect_true(calc_if_drought(temp_test_data, 2, 1, 2000) == "drought")
})
