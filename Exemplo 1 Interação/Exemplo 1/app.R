# Carregando pacotes
library(shiny)

# UI
ui <- fluidPage(
  # Adicionando CSS personalizado
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
  # Conteúdo da página
  div(class = "container",
      h1("Meu Shiny App Customizado"),
      p("Este é um exemplo de aplicação Shiny com CSS externo."),
      actionButton("btn", "Clique Aqui", class = "custom-button")
  )
)

# Server
server <- function(input, output, session) {
  observeEvent(input$btn, {
    showModal(modalDialog(
      title = "Mensagem",
      "Você clicou no botão!",
      easyClose = TRUE,
      footer = NULL
    ))
  })
}

shinyApp(ui, server)