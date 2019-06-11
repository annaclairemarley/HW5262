#' calc_extreme_rain_anom
#'
#'computes max and min anomalies and what year these anomalies occured for precipitation
#'
#' @param rain
#'
#' @return list of max and min anomalies and their years
#' @export
#'
#' @examples

calc_extreme_rain_anom = function(rain) {

  # find the max precipitation anomaly
  max_anom_rain = max(rain$Anomaly)

  # find the max temperature anomaly year that it was found
  max_anom_rain_year = rain %>%
    filter(Anomaly == max_anom_rain) %>%
    select(Date) %>%
    as.numeric()

  # find the min precipitation anomaly
  min_anom_rain = min(rain$Anomaly)

  # find the max temperature anomaly year that it was found
  min_anom_rain_year = rain %>%
    filter(Anomaly == min_anom_rain) %>%
    select(Date) %>%
    as.numeric()

  return(list(max_year = max_anom_rain_year,
              max_anom = max_anom_rain,
              min_year = min_anom_rain_year,
              min_anom = min_anom_rain))

}
