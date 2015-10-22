library (shiny)

shinyUI(pageWithSidebar (
  
  headerPanel("Body Mass Index Calculation"),

  sidebarPanel (
    
    p("Please select your weight in kilograms and height in santimetres"),
    hr(), 
    sliderInput("wgh",
                "Weight in kg",
                min = 20,  max = 130, value = 60),
    
    sliderInput("hgh",
                "Height in sm",
                min = 120,  max = 220, value = 160),
    hr(), 
    helpText("Based on a paper published in the July 1972 edition of the Journal of Chronic Diseases by Ancel Keys.")
  ),
  
  mainPanel(
    tabsetPanel(type = "tabs", 
                tabPanel("BMI Calculation", h4('The body mass index is calculated for '), 
                                            h4('weight/kg:'),
                                            verbatimTextOutput("wgh"),
                                            h4('height/sm:'),
                                            verbatimTextOutput("hgh"),
                                            h3('Your Body Mass Index is'),
                                            verbatimTextOutput('prediction')), 
                tabPanel("BMI Explanation",h4('Less than 15'), h5('Very severely underweight'),hr(),
                                           h4('From 15.0 to 16.0'), h5('Severely underweight'), hr(),
                                           h4('From 16.0 to 18.5'), h5('Underweight'), hr(),
                                           h4('From 18.5 to 25'), h5('Normal (healthy weight)'), hr(),
                                           h4('From 25 to 30'), h5('Overweight'), hr(),
                                           h4('From 30 to 35'), h5('Obese Class I (Moderately obese)'), hr(),
                                           h4('From 35 to 40'), h5('Obese Class II (Severely obese)'), hr(),
                                           h4('Over 40'), h5('Obese Class III (Very severely obese)'), hr()),
                tabPanel ("Application Documentation", h3('How to use application'),
                          hr(),
                          h4('Algoritm explanation'),
                          h5('The algoritm used in this calculatuin based on work of Ancel Keys published in the July 1972 edition of the Journal of Chronic Diseases. 
                             The term Body Mass Index (BMI) is the ratio of human body weight to squared height.
                             This found considered the BMI to be the best proxy for body fat percentage among ratios of human body weight and height.'),
                          hr(),
                          h4('User guide'),
                          h5('To use this applicatin for BMI calculation you need:'),
                          h5('1. Select your weight in kilograms in the left hand side panel'),
                          h5('2. Select your height in santimetres in the left hand side panel'),
                          h5('3. Get your BMI index from the main right hand side panel'),
                          hr(),
                          h4('Results interpratation'),
                          h5('As soon as you get your BMI calculated you can find range of body mass indexes and expalnation 
                             on the BMI Explanation tab. Just simply find the range where your BMI belongs to and read the explanation.')
    ))

  )
))