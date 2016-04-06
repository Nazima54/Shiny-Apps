library(shiny)
shinyServer(
  function(input,output){
    output$mygender <- renderText(input$gender)
  }
  )