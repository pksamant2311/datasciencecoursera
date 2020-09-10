library(shiny)
cvd <- read.csv2("CVD.csv")
# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Covid deaths per country"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
    # Define the sidebar with one input 
    sidebarPanel( selectInput("Country", "Country:",choices=colnames(cvd[-1])),  hr(), helpText("Covid deaths")), 
    
    # Create a spot for the barplot 
    mainPanel( plotOutput("deaths")) 
    
  ) 
) 

