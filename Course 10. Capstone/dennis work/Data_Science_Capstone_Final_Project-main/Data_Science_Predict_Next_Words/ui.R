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
fluidPage(theme = bs_theme(version = 5, bootswatch = "quartz"),
  titlePanel("What words will come out next?"),
          sidebarLayout(
            sidebarPanel(
              tags$b("Try to put some words in the box!"),
              textInput("textInput01", label=NULL, value = "", width=NULL, placeholder=''),
              submitButton("Start the prediction by clicking this button or press \"Enter\"",),
              br(),
              textOutput("notification01"), 
              tags$b("Prediction result:"),
              verbatimTextOutput("verbatimTextOutput01", placeholder=TRUE),
              tableOutput("tableOutput01"),
            ), 
            
            mainPanel(
              plotOutput("barplot01")
            ) 
          ) 
) 
