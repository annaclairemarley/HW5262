
crop_test = sample(1:1, 500, replace = T)
dates = seq(from = 1920, to = 2010, by = 10)
locations = c("SB", "LA", "SF","SLO","SD")

ca_test <- matrix(crop_test, nrow = 10, ncol = 5,
                  dimnames = list(c(dates), c(locations)))


test_that("crops_equal_one", {
  expect_that(calc_crop_harvest(crop_test, 2, 1)$harvests[1], equals(2))

}
)
