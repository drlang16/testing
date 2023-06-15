#
# This is the user-interface definition of a Shiny web application for 
# Data Science Capstone final project

# Install packages.
library(shiny)
library(ggplot2)
library(ggrepel)
library(stringr)
library(bslib)

# Define UI for application that draws a histogram
fluidPage(theme = bs_theme(version = 4, bootswatch = "minty"),
  titlePanel("Predict the next word"),
          sidebarLayout(
            sidebarPanel(
              tags$b("Please enter some words in the box below."),
              textInput("textInput01", label=NULL, value = "", width=NULL, placeholder=''),
              textOutput("notification01"), 
              tags$b("The most possible input predicted:"),
              verbatimTextOutput("verbatimTextOutput01", placeholder=TRUE),
              tableOutput("tableOutput01"),
              submitButton("Submit after typing words or clicking below Clear Button",),
              br(), # Make a submit button. This prevents the UI from staring the codes automatically.
              actionButton("ClearButton01", "Clear Input") # Made a Clear button to clear the data set. 
            ), 
            
            mainPanel(
              plotOutput("barplot01")
            ) 
          ) 
) 
