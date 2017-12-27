
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


shinyServer(function(input, output) {
  
  output$myLogModelSummary <- renderPrint({
    inFile <- input$datafile
    
    kickers <- read.csv(inFile$datapath)
    
    if (is.null(inFile))
      return(NULL)

    # Create the formula as a string
    myFormula <- paste("Success", " ~ ", input$myIV, sep = "")
    lmfit <- glm(formula=myFormula,
                 data=kickers,
                 family=binomial)
    summary(lmfit)
  }) 
  
  output$myLogModelPlot <- renderPlot({
    inFile <- input$datafile
    
    kickers <- read.csv(inFile$datapath,header = TRUE,sep = ",")
    
    if (is.null(inFile))
      return(NULL)
    
    # Create the plot
    library(ggplot2)
    g <- ggplot(data = kickers,aes_string(x=input$myIV,y="Success"))
    
    g <- g+geom_point()
    g <- g+stat_smooth(method = "glm",method.args = list(family="binomial"),se=FALSE)
    print(g)
  }) 
})
