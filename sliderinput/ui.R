library(shiny)

shinyUI(fluidPage(
  titlePanel(title ="Demonstration of Slider  widget in shiny"),
  sidebarLayout(
    sidebarPanel(
       #sliderInput("slide","Enter slide value",min = 0, max = 5, value = 2)),
      #Giving Range in slider
      #sliderInput("slide","Enter slide value",min = 0, max = 5, value = c(2,5))),
      # Animate
      #sliderInput("slide","Enter slide value",min = 0, max = 5, value = 2, animate = TRUE)),
      # step (interval in slider)
    sliderInput("slide","Enter slide value",min = 0, max = 5, value = 2, step = 0.5)),
    mainPanel("Slider Input",
              textOutput("out"))
  )
  
))