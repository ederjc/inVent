#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(httr)
library(plotly)
library(ggplot2)

datalist = list()

for (i in 1:50) {
    # ... make some data
    resp <- GET("https://api.theopenvent.com/exampledata/v2/data")
    string_content = content(resp)
    
    dat <- data.frame(time = string_content$`0`$time, 
                      ExpiredO2 = string_content$`0`$processed$ExpiredO2,
                      ExpiredCO2 = string_content$`0`$processed$ExpiredCO2,
                      flowrate = string_content$`0`$processed$flowrate
    )
    dat$i <- i  # maybe you want to keep track of which iteration produced it?
    datalist[[i]] <- dat # add it to your list
}

big_data = do.call(rbind, datalist)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Autonomous Ventilator"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            selectInput("patient_id",
                        "Patient ID:",
                        c("4242","3809","12693","93","586"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        ggplot(data = big_data, aes(x = time, y = ExpiredO2))+geom_line()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
