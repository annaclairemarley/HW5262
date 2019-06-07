rain_test_data =
  as.data.frame(
    cbind(
      Date = c(1:4),
      Value = c(1:4),
      Anomaly = c(1:4)
    )
  )


test_that("please_work", {
expect_that(calc_extreme_rain_anom(rain_test_data)$max_anom, equals(4))

}
)
