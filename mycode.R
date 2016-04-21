names(mtcars)
dim(mtcars)
summary(mtcars)
result <- data.frame( "t-statistic"  = test$statistic, 
                      "df" = test$parameter,
                      "p-value"  = test$p.value,
                      "lower CL" = test$conf.int[1],
                      "upper CL" = test$conf.int[2],
                      "automatic mean" = test$estimate[1],
                      "manual mean" = test$estimate[2],
                      row.names = "")
kable(x = round(result,3),align = 'c')