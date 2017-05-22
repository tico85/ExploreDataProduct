library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
    
    output$Hist1<-renderPlot({
        ggplot(mtcars, aes_string(x=input$varname1)) + geom_histogram(binwidth = input$sliderinput)
    })
  


        output$Scatter1<-renderPlot({
            ggplot(mtcars, aes_string(x=input$varname1, y="mpg", color=input$varname2)) + geom_point(size=5)
        })
    


    output$meanlist2<-reactive({ 
        meanlist<- subset(mtcars, select = input$varname1)
        round(mean(meanlist[,1]),2)
        })

})
