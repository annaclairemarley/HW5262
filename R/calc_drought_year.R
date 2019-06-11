

calc_drought_year = function(temp, drought_index, threshold, yr) {
  for (i in 1:nrow(temp))
  {temp$av[i] = mean(temp$Value[i] + temp$Value[i-1] + temp$Value[i+1])}
  mutate(temp,
         index = av*drought_index)
  mutate(temp, condition = if(temp$index> threshold, "drought","normal"))
  year_drought = filter(temp$Date == yr )

  return(list(Drought_year = year_drought))
}
