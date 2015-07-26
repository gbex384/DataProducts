conversionFactor<-function(num,StartResult,EndResult){
  
  ##Start First If Statements
  if(StartResult=="feet"){
    if(EndResult=="miles"){
      finale<-num*0.000189394
    }
    if(EndResult=="feet"){
      finale<-num * 1 
    }
    if(EndResult=="meters"){
      finale<-num *.3048
    }
    if(EndResult=="yards"){
      finale<-num/3.0
    }
    if(EndResult=="inches"){
      finale<-num*12.0
    }
    if(EndResult=="nautical miles"){
      finale<-num*0.000164579
    }
    
  }
  ##Start Second If Statements
  if(StartResult=="miles"){
    if(EndResult=="miles"){
      finale<-num * 1.0
    }
    if(EndResult=="feet"){
      finale<-num * 3.28084
    }
    if(EndResult=="meters"){
      finale<-num * 0.3048
    }
    if(EndResult=="yards"){
      finale<-num*1760.0
    }
    if(EndResult=="inches"){
      finale<-num*63360.0
    }
    if(EndResult=="nautical miles"){
      finale<-num*0.868976
    }
    
  }
  
  ##Start Third If Statements 
  if(StartResult=="meters"){
    
    if(EndResult=="miles"){
      finale<-num * 0.000621371
    }
    if(EndResult=="feet"){
      finale<-num * 3.28084
    }
    if(EndResult=="meters"){
      finale<-num * 1.0
    }
    if(EndResult=="yards"){
      finale<-num*1.09361
    }
    if(EndResult=="inches"){
      finale<-num*39.3701
    }
    if(EndResult=="nautical miles"){
      finale<-num*0.000539957
    }
  }
  
  ##Start Fourth If Statements
  if(StartResult=="yards"){
    
    if(EndResult=="miles"){
      finale<-num * 0.000568182
    }
    if(EndResult=="feet"){
      finale<-num * 3
    }
    if(EndResult=="meters"){
      finale<-num * 0.9144
    }
    if(EndResult=="yards"){
      finale<-num * 1.0
    }
    if(EndResult=="inches"){
      finale<-num * 36.0
    }
    if(EndResult=="nautical miles"){
      finale<-num * 0.000493737
    }
  }
  ##Start Fifth If Statments
  if(StartResult=="inches"){
    
    if(EndResult=="miles"){
      finale<-num * 1.5783 * 10^(-5)
    }
    if(EndResult=="feet"){
      finale<-num / 12.0
    }
    if(EndResult=="meters"){
      finale<-num * 0.0254
    }
    if(EndResult=="yards"){
      finale<-num / 36.0
    }
    if(EndResult=="inches"){
      finale<-num * 1.0
    }
    if(EndResult=="nautical miles"){
      finale<-num * 1.3715 * (10^-5)
    }
  }
  ##Start Sixth If Statements
  if(StartResult=="nautical miles"){
    
    if(EndResult=="miles"){
      finale<-num * 1.15078
    }
    if(EndResult=="feet"){
      finale<-num * 6076.12
    }
    if(EndResult=="meters"){
      finale<-num * 1852
    }
    if(EndResult=="yards"){
      finale<-num * 2025.37
    }
    if(EndResult=="inches"){
      finale<-num * 72913.4
    }
    if(EndResult=="nautical miles"){
      finale<-num * 1.0
    }
    
  }
  
  print(finale)
}


shinyServer(
  
  function(input,output){
  
  
  output$text1<-renderText({
    paste("You have selected",input$StartResult, " to be converted to", input$EndResult)
  })
  
  
  output$results<-renderPrint({conversionFactor(input$num,input$StartResult,input$EndResult)
    
    
    
    
    
  })
  
})