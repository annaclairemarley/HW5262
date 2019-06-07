#' calc_extreme_anom
#'
#' computes max and min anomalies and what year these anomalies occured for temperature and rain dataframes
#'
#' @param temp
#' @param rain
#'
#' @return matrix of results
#'
#'
#' @examples

calc_extreme_anom = function(temp, rain) {

  # find the max temperature anomaly
  max_anom_temp = max(temp$Anomaly)

  # find the max temperature anomaly year that it was found
  max_anom_temp_year = temp %>%
    filter(Anomaly == max_anom_temp) %>%
    select(Date) %>%
    as.numeric()

  # find the min temp anomaly
  min_anom_temp = min(temp$Anomaly)

  # find the min temperature anomaly year that it was found
  min_anom_temp_year = temp %>%
    filter(Anomaly == min_anom_temp) %>%
    select(Date) %>%
    as.numeric()

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

  # results matrix
  results_matrix = matrix(
    c(max_anom_temp_year, max_anom_temp, min_anom_temp_year, min_anom_temp, max_anom_rain_year, max_anom_rain, min_anom_rain_year, min_anom_rain),
      nrow = 2,
      ncol = 4,
      byrow = TRUE
  )
 rownames(results_matrix) = c("Temperature", "Precipitation")
 colnames(results_matrix) = c("Year", "Max Anomaly", "Year", "Min Anomaly")

  return(results = results_matrix)
}


