#' calc_crop_harvest
#'
#' Calculates the crop changes in harvest using temperature data and crop parameters. Disclaimer: this is a made up function.
#'
#' @param crop_temp local temperature dataset
#' @param mean_temp enter the mean temp user wants to use
#' @param crop_parameter crop paramter unique to the crop you want to use
#'
#' @return lists mean temperatures per year first then harvest value per year
#' @export
#'
#' @examples
calc_crop_harvest = function(crop_temp, mean_temp, crop_parameter) {
  # calculates the mean temperature for each year across locations
  threshold = apply(crop_temp, MARGIN = 1, FUN = mean)
  # use this information to calculate harvest value using parameters set by user
  harvest = (mean_temp - threshold)*crop_parameter

  return(list(thresholds = threshold,
         harvests = harvest))

}
