#' calc_if_drought
#'
#' This function will return whether a given year of the past was considered a drought year based on the average temperature over the previous three years
#'
#' @param temp Dataset with yearly temperatures for a chosen location
#' @param drought_index Parameter
#' @param threshold A number above which there has been a drought
#' @param yr The year of which you are interested in

calc_if_drought = function(temp, drought_index, threshold, yr){
  for (i in 1:nrow(temp)) {temp$av[i] = mean(temp$Value[i] + temp$Value[i-1] + temp$Value[i+1])}

  temp2 = temp %>%
    dplyr::mutate("index" = av*drought_index) %>%
    dplyr::mutate("condition" = ifelse(index > threshold, "drought","normal"))

  year_drought <- temp2 %>%
    dplyr::filter(Date == yr)

  return(list(conditions = year_drought$condition))
}
