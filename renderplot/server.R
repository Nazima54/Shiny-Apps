library(shiny)
data(iris)

# Define server logic required to draw a histogram
shinyServer(function(input, output){
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  # Print some observations from IRIS data set into the data tab at the MainPanel,
  
  
  ## Define renderPrint function for Summary Tab. 
  output$sum  <- renderPrint({
    summary(iris)
  })
  
  ## Define renderPrint function for Structure Tab.
  output$str <- renderPrint({
    str(iris)
  })
  
  ## Define renderTable Function for user selcted column in the Data Tab.
  output$data <- renderTable({
    colm <- as.numeric(input$var)
    iris[colm]
  # head(iris)
  })
  ## Define the renderPlot function for the Plot Tab
  output$myhist <- renderPlot({
    colm    <- as.numeric(input$var)
    
    # Draw the histogram with the specified number of bins
    hist(iris[,colm], breaks = seq(0,max(iris[,colm]),length.out = input$bins + 1),col = input$color,main = "Histogram of iris dataset",xlab = names(iris[colm]))
  })
})

  