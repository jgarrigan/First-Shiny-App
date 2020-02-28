install.packages("shiny")

library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose A Number",
              value = 25,
              min = 1,
              max = 50),
  plotOutput("hist")
)

server <- function(input,output) {
  output$hist <- renderPlot({
    hist(rnorm(2000), main = "This is a histogram")
  })
}

shinyApp(ui = ui, server = server)