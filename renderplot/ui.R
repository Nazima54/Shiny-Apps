library(shiny)
data(iris)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h4("Iris Dataset", align = "center")),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
         sidebarPanel(
        selectInput("var","1. Select quantitative variable",choices = c("Sepal Length" = 1,"Sepal Width" = 2,"Petal length" = 3,"Petal Width" = 4)),
        br(),
        sliderInput("bins","2. Select the number of Bins for the Histogram", min = 5,max = 25, value = 15),
        br(),
        radioButtons("color","3. Select the color of histogram", choices=c("Red","Green","Yellow"), selected = "Green")
      ),
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type="tab",
                  tabPanel("Summary", verbatimTextOutput("sum")),
                  tabPanel("Structure", verbatimTextOutput("str")),
                  tabPanel("Data", tableOutput("data")),
                  tabPanel("Plot", plotOutput("myhist"))
                  )
    )
))
)
