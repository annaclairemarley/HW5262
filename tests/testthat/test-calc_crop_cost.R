test_that("crop_cost_equals_1", {
  crop_test = sample(1:1, 500, replace = T)
  dates = seq(from = 1920, to = 2010, by = 10)
  locations = c("SB", "LA", "SF","SLO","SD")
  ca_test <- matrix(crop_test, nrow = 10, ncol = 5,
                    dimnames = list(c(dates), c(locations)))

  expect_that(calc_crop_cost(ca_test, 2, 1, 1, 1)$change_in_value[1], equals(c('1920' = 1)))
})
