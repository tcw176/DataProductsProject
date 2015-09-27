library(shiny)

shinyUI(
      pageWithSidebar(
            # Application title
            headerPanel("Gas Mileage Prediction"),
            
            sidebarPanel(
                  numericInput('weight', 'Car Weight in lbs', 1000, min = 600, max = 4000, step = 200),
                  submitButton('Submit'),
                  helpText("A linear model was built to predict the gas mileage of cars",
                              "using the mtcars data set.",
                              "Use the up and down arrows to choose the car weight",
                              "then press the Submit button to calculate the result.",
                              "The minimum weight allowed is 600 lbs and the maximum is 4000 lbs.")

            ),
            
            mainPanel(
                  h3('Results of prediction'),
                  h4('You entered:'),
                  verbatimTextOutput("inputValue"),
                  h4('Which results in a gas mileage in mpg of:'),
                  verbatimTextOutput("prediction")
            )

      )
)
