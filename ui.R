library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Know Your Body Mass Index"),
  sidebarPanel(
    h3('BMI Calculator'),
    numericInput('wt', 'Enter your weight in kg', 0, min = 0, max = 150, step = 0.1),
    numericInput('ht', 'Enter your height in m', 0, min = 0, max = 2, step = 0.01),
    submitButton('Compute') 
    ),
  mainPanel(
    h3 ('Instructions'),
    h4 ('Enter your weight in kg and height in m to compute your BMI and know your risk category'),
    h4('Your BMI is'),
    verbatimTextOutput("bmi"),
    h4('It is in the '),
    verbatimTextOutput("risk"),
    h4('A BMI value of 23 and above indicates that your weight is outside of the healthy weight range for your height.')    
    )
))