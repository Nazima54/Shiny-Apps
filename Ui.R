library(shiny)

shinyUI(fluidPage(
   
  titlePanel(title = "This is my first shiny app"),
  sidebarLayout(position = "right",
  sidebarPanel(h3("This is side bar panel"),h4("widget4"),h5("widget5")),
  mainPanel(h4("This is main panel text"),h5("output is displayed here")
  )
  )
)
)