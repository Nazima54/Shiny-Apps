library(shiny)

shinyUI(fluidPage(
  titlePanel("Demo for selected Input"),
  sidebarLayout(
    sidebarPanel(
      selectInput("selecnames","Select state", c("CA","NJ","TX","AZ","NY"),selected = "TX", multiple = TRUE)),
    mainPanel(paste("You selected : " ),
      textOutput("state")
    )
    
  )
))