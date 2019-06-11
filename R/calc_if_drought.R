

#' calc_if_drought
#'
#' This function will return whether a given year of the past was considered a drought year based on the average temperature over the previous three years
#'
#' @param temp Dataset with year temperatures for a chosen location
#' @param drought_index Parameter
#' @param threshold A number above which there has been a drought
#' @param yr The year of which you are interested in
#'
#' @return "drought" or normal

#'
#' @examples
calc_if_drought = function(temp, drought_index, threshold, yr){
  for (i in 1:nrow(temp)) {temp$av[i] = mean(temp$Value[i] + temp$Value[i-1] + temp$Value[i+1])}

  temp2 = temp %>%
    mutate("index" = av*drought_index) %>%
    mutate("condition" = ifelse(temp2$index>threshold, "drought","normal"))

  year_drought <- temp2 %>%
    filter(Date == yr)

  return(list(conditions = year_drought$condition))
}
