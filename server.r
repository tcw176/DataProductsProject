library(shiny)

data(mtcars)

fit <- lm(mpg~wt, data = mtcars)

int <- fit$coefficients[1]
beta <- fit$coefficients[2]

MPG <- function(weight) {round(int + beta*weight/1000, 1)}

shinyServer(
      function(input, output) {
            output$inputValue <- renderPrint({input$weight})
            output$prediction <- renderPrint({MPG(input$weight)})
            
      }
)
