library(shiny)

bmiIndex <- function (weight, height) weight/(height/100*height/100)

shinyServer(
  function(input, output) {
    
    output$wgh <- renderPrint ({input$wgh})
    output$hgh <- renderPrint ({input$hgh})
    output$prediction <- renderPrint({bmiIndex(input$wgh, input$hgh)})
  }
)