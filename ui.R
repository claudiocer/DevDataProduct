# Creation of Shiny UI for Exchange Rate and Exchange Rate Variability

shinyUI(pageWithSidebar(
        headerPanel("Exchange Rates and Exchange Rate Variability"),
        sidebarPanel(
                selectInput("variable", "Change:",
                            list("USD",
                                 "EUR",
                                 "GBP",
                                 "AUD",
                                 "CAD",
                                 "CHF",
                                 "DKK",
                                 "HKD",
                                 "JPY",
                                 "KRW",
                                 "NOK",
                                 "NZD",
                                 "SEK",
                                 "MXN")),
                selectInput("variable2", "To:",
                            list("EUR",
                                 "USD",
                                 "GBP",
                                 "AUD",
                                 "CAD",
                                 "CHF",
                                 "DKK",
                                 "HKD",
                                 "JPY",
                                 "KRW",
                                 "NOK",
                                 "NZD",
                                 "SEK",
                                 "MXN")),
                numericInput('amount', 'Amount to be converted at current exchange rate:', 
                             100, min = 0, step = 0.5),
                numericInput('days', 'If you had exchanged your currency some time ago?
                             Give number of days you want to look back!', 
                             10, min = 1, max = 480, step = 1)
                
        ),
        mainPanel(
                h3('Exchanged Currency'),
                h4("From"),
                verbatimTextOutput("oid1"),
                h4("To"),
                verbatimTextOutput("oid2"),
                h4("Amount at current exchange rate"),
                verbatimTextOutput("amount"),
                h4 ("Amount at past exchange rate"),
                verbatimTextOutput("amount2"),
                plotOutput('myplot')                
        )
))
