
#' calc_crop_cost
#'
#' This function will find the anomaly in rainfall, and then calculate the estimate loss or gain in crop harvest and the corresponding value of that crop
#'
#' @param crop_rain  data set with rain by year (inches)
#' @param mean_rain the California average rainfall amount (inches)
#' @param risk_parameter a paramter that esimates the perentage of crop loss based on deviation from average temperature
#' @param total_harvest total expected harvest (lbs)
#' @param price price per poound of harvest
#'
#' @return Estimated crop loss or gain, and the monetary value of that loss or gain
#'
#'
#'
#'
calc_crop_cost = function(crop_rain, mean_rain, risk_parameter, total_harvest, price) {
  # calculates the mean temperature for each year across locations
  threshold = apply(crop_rain, MARGIN = 1, FUN = mean)
  # use this information to calculate harvest value using parameters set by user
  risk = (mean_rain - threshold)*risk_parameter
  harvest = risk * total_harvest
  value = harvest * price

  return(list(change_in_harvest = harvest,
              change_in_value = value))

}
