# this is the test that doesn't say the function = 4 even though when you run it through the function says it = 4

#rain_test_data =
 # data.frame(
  #  Date = c(1:4),
   # Value = c(1:4),
    #Anomaly = c(1:4)
 # )


test_that("please_work", {
  expect_that(calc_extreme_rain_anom(rain)$max_anom, equals(1.13))

}
)
