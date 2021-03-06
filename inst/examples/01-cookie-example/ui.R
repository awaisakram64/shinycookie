library(shiny)
library(shinycookie)

#' Define UI for application that demonstrates a simple shinyCookie example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyUI(fluidPage(
    titlePanel("Shiny Cookie"),

    sidebarLayout(
        sidebarPanel(

          # initialize cookie js in UI
          initShinyCookie("cookies"),

          tags$p("More information about shinyCookie"),
          textInput("value", "Enter a value to be stored"),
          actionButton("fire", "Fire!"),
          actionButton("remove", "Remove!")
        ),

        mainPanel(
            shiny::verbatimTextOutput("shiny_cookie")
        )
    )
))
