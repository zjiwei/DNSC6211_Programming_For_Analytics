
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Assignment 7 - Football data"),
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("myIV", "Independent Variable:",
                  choices=c("Distance","ScoreDiff")),
      hr(),
      helpText("Please choose your independent variable")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type="tabs",
        tabPanel("Summary", verbatimTextOutput("myLogModelSummary")), 
        tabPanel("Plot", plotOutput("myLogModelPlot"))
    )
    )
)
))
