library(shiny)
data("iris")

shinyServer(function(input,output){
  
  x <-  reactive({
    iris[,as.numeric(input$var1)]
  })
  
  y <-  reactive({
    iris[,as.numeric(input$var2)]
  })
  
  output$plot <- renderPlot({
    plot(x(),y())
  })
  
  output$down <- downloadHandler(
    # specify file name
    filename = function(){
      #iris.png
      #iris.pdf
      paste("iris",input$var3, sep = '.')
    },
 
      content = function(file){
        #open the device
        #create the plot
        #close the plot
        #png()
        #pdf()
        
        if(input$var3 == "pdf")
          pdf(file)
        else
          png(file)
        plot(x(),y())
        dev.off()
        
      })
  
})