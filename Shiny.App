#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
data <- read.csv("Celiac.csv")

# Define UI for random distribution app ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Tabsets"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      # Output: Tabset w/ plot, summary, and table ----
      tabsetPanel(type = "tabs",
                  tabPanel("Summary", textOutput("sum")),
                  tabPanel("Wordle", plotOutput("wordle")),
                  tabPanel("Cluster", plotOutput("cluster"))
      )

    )
  )
)

# Define server logic for random distribution app ----
server <- function(input, output) {
  output$sum <- renderText({
    summary(data)
  })
  
  output$wordle <- renderPlot({
    ### wordle code here
  })
  
  output$cluster <- renderPlot({
    ### cluster code here
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

