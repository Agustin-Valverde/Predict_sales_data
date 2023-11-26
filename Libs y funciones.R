library(pacman)
p_load(tidyverse, scales, patchwork, RColorBrewer, corrplot, skimr, forcats, fuzzyjoin, alluvial, ggrepel,
       ggforce, ggridges, gganimate, GGally, ggthemes, wesanderson, 
       kableExtra, forecast, lubridate, prophet, timetk, crosstalk, plotly,
       foreach, doParallel)

library(vroom)
library(vctrs)

get_binCI <- function(x,n) as.list(setNames(binom.test(x,n)$conf.int, c("lwr", "upr")))


load("data/objects.RData")

