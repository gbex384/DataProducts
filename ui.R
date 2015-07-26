shinyUI(fluidPage(
  titlePanel("Unit Conversion"),
  
  sidebarLayout(
    sidebarPanel(
      helpText(
        p("1. Input a number in the box,"),
        p("2. Select the unit of measurement you're starting with"),
        p("3. Select the unit of measurement you're converting to")
        ),
 
      fluidRow(
        column(5,
               numericInput("num",
                label=h4("Value of Units"),
                value=1)),
      
        column(5,
               selectInput("StartResult", label=h4("Select Starting Units"),
               choices=list("Feet"="feet","Miles"="miles","Meters"="meters","Yards"="yards","Inches"="inches","Nautical miles"= "nautical miles"),selected="miles")
               ),
        column(5,
               selectInput("EndResult",label=h4("Select Ending Units"),
               choices=list("Feet"="feet","Miles"="miles","Meters"="meters","Yards"="yards","Inches"="inches","Nautical miles"= "nautical miles"),selected = "meters")
               )
      
      )           
                 
    ),
    
    mainPanel(
    h1("Results"),
    textOutput("text1"),
    textOutput("results")
    
              
                        
    )
    
  )
))