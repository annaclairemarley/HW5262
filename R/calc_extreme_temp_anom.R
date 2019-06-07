#' calc_extreme_temp_anom
#'
#'computes max and min anomalies and what year these anomalies occured for temperature
#'
#' @param temp
#'
#' @return
#' @export
#'
#' @examples
calc_extreme_temp_anom = function(temp) {

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


  return(list(max_year = max_anom_temp_year,
              max_temp_anomaly = max_anom_temp,
              min_year = min_anom_temp_year,
              min_temp_anomaly = min_anom_temp))
}
