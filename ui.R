

# Define UI for application that draws a histogram
shinyUI(fluidPage(
 
  titlePanel("Explore Your Data"),
  sidebarLayout(
    sidebarPanel(
       selectInput("varname1", "Variable to Chart:",
                   c("MPG" = "mpg",
                     "Horsepower" = "hp",
                     "Weight" = "wt",
                     "Cylinders" = "cyl",
                     "Transmission" = "am")),
       selectInput("varname2", "Variable to Use as Color:",
                   c("MPG" = "mpg",
                     "Horsepower" = "hp",
                     "Weight" = "wt",
                     "Cylinders" = "cyl",
                     "Transmission" = "am")),
        sliderInput("sliderinput", "Bin Width", 1, 10, value=5),
    p("Documentation for app is in the README.txt file in this app's repo.  Also, this application takes a moment to load.")),
    # Show a plot of the generated distribution
    mainPanel(
                h3("Scatterplot with MPG and Histogram"),
                p("Mean Value of Variable: "),
                textOutput("meanlist2"),
                  plotOutput("Scatter1"),
                  plotOutput("Hist1")
  ))
))
