#
# This is the user-interface definition of a Shiny web application for 
# Data Science Capstone final project


# Install packages.

library(shiny)
library(ggplot2)
library(ggrepel)
library(stringr)
library(bslib)

# Load 3-grams dictionary. It is made from the Week 4 assignment.
trigram <- readRDS("con_3gram_notail_en")
words <- list()

# Define server logic required to draw a bar plot
function(input, output, session){
  observe({
    input$textInput01 
    
    # Input words should be alphabetical and lower-case ones only. 
    text <- tolower(input$textInput01)
    text <- gsub("^[^a-z]+|[^a-z]+$", " ", text)
    text <- str_trim(gsub("\\s+", " ", text))
    
    # Convert input to a list of words
    words <- unlist(strsplit(text, " "))
    
    if (length(words) == 0){
      # show a message
      if (str_trim(input$textInput01) != ""){
        output$notification01 <- renderText(paste0(input$textInput01, " is not a valid input for prediction. 
                                                 Please type another word(s)."))
      }
      output$verbatimTextOutput01 <- renderText(NULL)
      output$tableOutput01 <- renderTable(NULL)
      output$barplot01 <- renderPlot(NULL)
      return()
    }
  
# Add a status bar to visualize the calculation  
    withProgress(message = 'working', value = 0, {
      step = 20
      for( i in 1:step){
        Sys.sleep(0.2)  
        incProgress(1/step, detail = paste(i, 'step working'))
      } 
    })
    # show a message
    output$notification01 <- renderText(paste0("Prediction is made for: ", input$textInput01))
    
    # Search 3-grams dictionary
    # Match with the last two words
    pred <- head(trigram[grep(paste0("^", str_trim(paste0(words[length(words)-1], " ",
                                                          words[length(words)])), " "), 
                              trigram[,'ngrams']),], 20)
    # match with the last word
    if (length(words)>1 & dim(pred)[1]==0){
      pred <- head(trigram[grep(paste0("^", words[length(words)], " "), 
                                trigram[,'ngrams']),], 20)}
    
    if (dim(pred)[1]==0){pred <- trigram[1:20,]}
    
    if (dim(pred)[1] != 0){
      # output the prediction
      output$verbatimTextOutput01 <- renderText({pred[1,1]})
      # show predicted words table
      output$tableOutput01 <- renderTable(head(pred))
      # plot a bar chart
      output$barplot01 <- renderPlot({
        barplot01 <- ggplot(data=pred, aes(x=reorder(ngrams, -prop), y = prop)) +
          geom_bar(stat="identity", fill="steelblue") +
          geom_label_repel(aes(label=ngrams), size=4) +
          labs(title="Predicted 3-grams Probability",
               x="", y="Probability") +
          theme(plot.title=element_text(size=30, face="bold"),
                axis.text.x=element_blank(),
                axis.text.y=element_text(angle=90))
        print(barplot01)
      }) 
      return()
    } 
    # if (dim(pred)[1] != 0)
    output$verbatimTextOutput01 <- renderText("(No prediction)")
    output$tableOutput01 <- renderTable(NULL)
    output$barplot01 <- renderPlot(NULL)
    
  })
  
  # Make a Clear Button
  observeEvent(input$ClearButton01, {
    words <<- list()
    updateTextInput(session, "textInput01", value="")
    output$verbatimTextOutput01 <- renderText(NULL)
    output$tableOutput01 <- renderTable(NULL)
    output$barplot01 <- renderPlot(NULL)
    return()
  }) 
  
} 

