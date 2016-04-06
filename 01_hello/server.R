library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output){
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$myhist <- renderPlot({
    colm    <- as.numeric(input$var)
    
    # draw the histogram with the specified number of bins
    hist(iris[,colm], breaks = seq(0,max(iris[,colm]),length.out = input$bins + 1),col = input$color,main = "Histogram of iris dataset",xlab = names(iris[colm]))
  })
})

  