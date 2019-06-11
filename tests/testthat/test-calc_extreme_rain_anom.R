# this is the test that doesn't say the function = 4 even though when you run it through the function says it = 4

test_that("please_work", {
  rain_test_data =
    data.frame(
        Date = c(1:4),
        Value = c(1:4),
        Anomaly = c(1:4)
    )

  expect_true(as.integer(calc_extreme_rain_anom(rain_test_data)$max_anom) == 4)

}
)
