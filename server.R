library(shiny)

bmiValue <- function (w,h) w/h^2

bmirisk   <- function (bmi) {
  if (!is.na(bmi)) {
    if (bmi < 18.5) "Low Risk category but your weight is in the unhealthy range for your height"
    else if (bmi < 23) "Low Risk category"
    else if (bmi < 27.5) "Moderate Risk category"
    else "High Risk category"
  } else ""
}

shinyServer(
  function(input, output) {
    output$bmi  <- renderPrint({bmiValue(input$wt,input$ht)})
    output$risk <- renderPrint({bmirisk(bmiValue(input$wt,input$ht))})
  }
)