
OWM_API_KEY= "86daa06743a3c7591436928b2d8ca1af"

library(owmr)

# first of all you have to set up your api key
owmr_settings(OWM_API_KEY)

# or store it in an environment variable called OWM_API_KEY (recommended)
Sys.setenv(OWM_API_KEY = OWM_API_KEY) # if not set globally

# get current weather data by city name
(res <- get_current("Netherlands", units = "metric") %>%
    owmr_as_tibble()) %>% names()
res[, 1:6]


# get forecast
forecast <- get_forecast("Netherlands", units = "metric") %>%
  owmr_as_tibble()
Weather.data = data.frame(forecast)
 
Weather.data
#subset data by Date, temp and weather description

Weather.data = Weather.data[ , c(1, 2, 9)]
#rename columns
colnames(Weather.data) <- c( "Date (3hr interval)","Temperature","Weather Description")  
Weather.data[Weather.data$`Date (3hr interval)`>=Sys.Date() &Weather.data$`Date (3hr interval)`<=Sys.Date()+1,]
