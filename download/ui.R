library(shiny)
data(iris)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h4("Download Base Plot in Shiny", align = "center")),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("var1","1. Select quantitative variable",choices = c("Sepal Length" = 1,"Sepal Width" = 2,"Petal length" = 3,"Petal Width" = 4)),
      br(),
      selectInput("var2","2. Select quantitative variable",choices = c("Sepal Length" = 1,"Sepal Width" = 2,"Petal length" = 3,"Petal Width" = 4)),
      br(),
      radioButtons("var3","3. Select the file type", choices=c("pdf","png"), selected = "pdf")),
    
    # Show a plot of the generated distribution
    
   
  mainPanel(
     plotOutput("plot"),
     downloadButton(outputId = "down",label = "Download Plot")
  )
  )
))
