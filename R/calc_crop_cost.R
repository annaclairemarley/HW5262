
#' Title
#'
#' @param crop_rain
#' @param mean_rain
#' @param risk_parameter
#' @param total_harvest
#' @param price
#'
#' @return
#' @export
#'
#' @examples
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
