library(shiny)

shinyUI(fluidPage(
  
  headerPanel(title = "Radio Buttons"),
  sidebarLayout(
    sidebarPanel("Enter the gender ",
    radioButtons("gender","Select the Gender",list("Male","Female"))),
    
    mainPanel(("Gender Information"),
      textOutput("mygender")
    )
  )
))