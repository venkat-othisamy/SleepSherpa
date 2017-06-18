library(googleAnalyticsR)
ga_auth()

my_accounts <- ga_account_list()
my_id=my_accounts$viewId
web_data <- google_analytics_4(my_id, 
                               date_range = c("2017-01-01", "2017-01-01"),
                               metrics = c("sessions","exits"),
                               dimensions = c("date","deviceCategory",
                                              "channelGrouping","pageTitle"))
