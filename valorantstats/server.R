#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinymaterial)

# Define server logic required to draw a histogram
function(input, output, session) {
  
  textos <- function(survived, damage, damageReceived, kills, deaths, assistants, grenadeCasts, econrating, traded, flawless, teamAces, clutches, clutchesLost){
    output$survived_text <- renderPrint(survived)
    output$damage_text <- renderPrint(damage)
    output$damageReceived_text <- renderPrint(damageReceived)
    output$kills_text <- renderPrint(kills)
    output$deaths_text <- renderPrint(deaths)
    output$assistants_text <- renderPrint(assistants)
    output$grenadeCasts_text <- renderPrint(grenadeCasts)
    output$econrating_text <- renderPrint(econrating)
    output$traded_text <- renderPrint(traded)
    output$flawless_text <- renderPrint(flawless)
    output$teamAces_text <- renderPrint(teamAces)
    output$clutches_text <- renderPrint(clutches)
    output$clutchesLost_text <- renderPrint(clutchesLost) 
  }
  
  mapas <- function(map){
    if (is.null(map))
      return(NULL)
    
    print(map)
    
    if(map == 1){
      return(list(
        src = "images/ascent.png",
        filetype = "image/png",
        width = 500,
        height = 300,
        alt = "Ascent"
      ))
    }else if(map == 2){
      return(list(
        src = "images/split.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Split"
      ))
    }else if(map == 3){
      return(list(
        src = "images/haven.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Haven"
      ))
    }else if(map == 4){
      return(list(
        src = "images/bind.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Bind"
      ))
    }else if(map == 5){
      return(list(
        src = "images/icebox.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Icebox"
      ))
    }else if(map == 6){
      return(list(
        src = "images/breeze.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Breeze"
      ))
    }else if(map == 7){
      return(list(
        src = "images/fracture.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Fracture"
      ))
    }else if(map == 8){
      return(list(
        src = "images/pearl.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Pearl"
      ))
    }else if(map == 9){
      return(list(
        src = "images/lotus.png",
        filetype = "image/png",
        width = 400,
        height = 300,
        alt = "Lotus"
      ))
    }
  }
  
  agente <- function(agent){
    if (is.null(agent))
      return(NULL)
    
    if (agent == 1) {
      return(list(
        src = "images/astra.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Astra"
      ))
    }else if (agent == 2) {
      return(list(
        src = "images/breach.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Breach"
      ))
    }else if (agent == 3) {
      return(list(
        src = "images/brimstone.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Brimstone"
      ))
    }else if (agent == 4) {
      return(list(
        src = "images/chamber.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Chamber"
      ))
    }else if (agent == 5) {
      return(list(
        src = "images/cypher.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Cypher"
      ))
    }else if (agent == 6) {
      return(list(
        src = "images/fade.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Fade"
      ))
    }else if (agent == 7) {
      return(list(
        src = "images/harbor.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Harbor"
      ))
    }else if (agent == 8) {
      return(list(
        src = "images/jett.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Jett"
      ))
    }else if (agent == 9) {
      return(list(
        src = "images/kayo.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Kayo"
      ))
    }else if (agent == 10) {
      return(list(
        src = "images/killjoy.png",
        contentType = "image/png",
        width = 200,
        height = 200,
        alt = "Killjoy"
      ))
    }else if (agent == 11) {
      return(list(
        src = "images/neon.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Neon"
      ))
    }else if (agent == 12) {
      return(list(
        src = "images/omen.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Omen"
      ))
    }else if (agent == 13) {
      return(list(
        src = "images/phoenix.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Phoenix"
      ))
    }else if (agent == 14) {
      return(list(
        src = "images/raze.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Raze"
      ))
    }else if (agent == 15) {
      return(list(
        src = "images/reyna.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Reyna"
      ))
    }else if (agent == 16) {
      return(list(
        src = "images/sage.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Sage"
      ))
    }else if (agent == 17) {
      return(list(
        src = "images/skye.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Skye"
      ))
    }else if (agent == 18) {
      return(list(
        src = "images/sova.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Sova"
      ))
    }else if (agent == 19) {
      return(list(
        src = "images/viper.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Viper"
      ))
    }else if (agent == 20) {
      return(list(
        src = "images/yoru.png",
        filetype = "image/png",
        width = 200,
        height = 200,
        alt = "Yoru"
      ))
    }else{
      return(list(
        src = "images/sin-agente.png",
        contentType = "image/png",
        width = 200,
        height = 200,
        alt = ""
      ))
    }
  }
  
  output$result <- renderImage({
    if (!input$result) {
      return(list(
        src = "images/sin-agente.png",
        filetype = "image/png",
        width = 400,
        height = 150,
        alt = "Cypher"
      ))
    }else if(input$random | !input$result){
      print("Entra en random")
      agent = sample(1:20,1)
      map = sample(1:9,1)
      survived = sample(0:13,1)
      damage = sample(0:7500, 1)
      damageReceived = sample(0:6000,1)
      kills = sample(0:50,1)
      deaths = sample(0:20,1)
      assistants = sample(0:50,1)
      grenadeCasts = sample(0:30,1)
      econrating = sample(0:200,1)
      traded = sample(0:10,1)
      flawless = sample(0:10,1)
      teamAces = sample(0:5,1)
      clutches = sample(0:10,1)
      clutchesLost = sample(0:10,1)
      #Render image agent and map
      output$agent <- renderImage({
        agente(agent)
      }, deleteFile = FALSE)
      output$map <- renderImage({
        mapas(map)
      }, deleteFile = FALSE)
      textos(survived, damage, damageReceived, kills, deaths, assistants, grenadeCasts, econrating, traded, flawless, teamAces, clutches, clutchesLost)
      yest = (exp(4.161946 - 0.06184254 * agent - 0.07480012 * map + 0.4576182 * survived 
                  + 0.000643398 * damage - 0.0001695448 * damageReceived + 0.03786214 * kills
                  - 0.4690715 * deaths + 0.1811134 * assistants - 0.01842506 * grenadeCasts
                  - 0.04037011 * econrating + 0.1676866 * traded + 0.5629197 * flawless 
                  + 0.5651977 * teamAces + 0.8473769 * clutches - 0.5274014 * clutchesLost) /
                (1 + exp(4.161946 - 0.06184254 * agent - 0.07480012 * map + 0.4576182 * survived 
                         + 0.000643398 * damage - 0.0001695448 * damageReceived + 0.03786214 * kills
                         - 0.4690715 * deaths + 0.1811134 * assistants - 0.01842506 * grenadeCasts
                         - 0.04037011 * econrating + 0.1676866 * traded + 0.5629197 * flawless 
                         + 0.5651977 * teamAces + 0.8473769 * clutches - 0.5274014 * clutchesLost)))
      threshold = 0.5
      if(yest > threshold){
        return(list(
          src = "images/victory.jpeg",
          filetype = "image/jpeg",
          width = 400,
          height = 150,
          alt = "Victory"
        ))
      }else{
        return(list(
          src = "images/defeat.jpg",
          filetype = "image/jpg",
          width = 400,
          height = 150,
          alt = "Defeat"
        ))
      }
    }else{
        print("Entra valores ingresados")
        agent = input$agent 
        map = input$map 
        survived = input$survived 
        damage = input$damage 
        damageReceived = input$damageReceived 
        kills = input$kills 
        deaths = input$deaths 
        assistants = input$assistants 
        grenadeCasts = input$grenadeCasts 
        econrating = input$econrating 
        traded = input$traded 
        flawless = input$flawless 
        teamAces = input$teamAces 
        clutches = input$clutches 
        clutchesLost = input$clutchesLost
        agent = as.numeric(agent)
        map = as.numeric(map)
        #Render image agent and map
        output$agent <- renderImage({
          agente(agent)
        }, deleteFile = FALSE)
        output$map <- renderImage({
          mapas(map)
        }, deleteFile = FALSE)
        textos(survived, damage, damageReceived, kills, deaths, assistants, grenadeCasts, econrating, traded, flawless, teamAces, clutches, clutchesLost)
        yest = (exp(4.161946 - 0.06184254 * agent - 0.07480012 * map + 0.4576182 * survived 
                    + 0.000643398 * damage - 0.0001695448 * damageReceived + 0.03786214 * kills
                    - 0.4690715 * deaths + 0.1811134 * assistants - 0.01842506 * grenadeCasts
                    - 0.04037011 * econrating + 0.1676866 * traded + 0.5629197 * flawless 
                    + 0.5651977 * teamAces + 0.8473769 * clutches - 0.5274014 * clutchesLost) /
                  (1 + exp(4.161946 - 0.06184254 * agent - 0.07480012 * map + 0.4576182 * survived 
                           + 0.000643398 * damage - 0.0001695448 * damageReceived + 0.03786214 * kills
                           - 0.4690715 * deaths + 0.1811134 * assistants - 0.01842506 * grenadeCasts
                           - 0.04037011 * econrating + 0.1676866 * traded + 0.5629197 * flawless 
                           + 0.5651977 * teamAces + 0.8473769 * clutches - 0.5274014 * clutchesLost)))
        threshold = 0.5
        if(yest > threshold){
          return(list(
            src = "images/victory.jpeg",
            filetype = "image/jpeg",
            width = 400,
            height = 150,
            alt = "Victory"
          ))
        }else{
          return(list(
            src = "images/defeat.jpg",
            filetype = "image/jpg",
            width = 400,
            height = 150,
            alt = "Defeat"
          ))
        }
      }
    }, deleteFile = FALSE)

    #PAGINA ESTADISTICAS
    output$grafico <- renderPlot({
      req(input_file())
      data <- input_file()
      plot(data$Kills, data$Score, main = "Gráfico Kills vs Score")
    })
    
    output$victorys <- renderPrint({
      req(input_file())
      data <- input_file()
      data <- data[!data$Result == "tied",]
      y = data$Result
      y[y == "victory"] = 1
      y[y == "defeat"] = 0
      y = as.numeric(y)
      res = sum(y)
      print(res)
    })
    
    output$percent_victory <- renderPrint({
      req(input_file())
      data <- input_file()
      data <- data[!data$Result == "tied",]
      y = data$Result
      y[y == "victory"] = 1
      y[y == "defeat"] = 0
      y = as.numeric(y)
      res = sum(y)
      res2 = res / nrow(data) 
      print(res2)
    })
    
    output$kills_total <- renderPrint({
      req(input_file())
      data <- input_file()
      res = sum(data$Kills) 
      print(res)
    })
    
    output$deaths_total <- renderPrint({
      req(input_file())
      data <- input_file()
      res = sum(data$Deaths) 
      print(res)
    })
    
    output$assistants_total <- renderPrint({
      req(input_file())
      data <- input_file()
      res = sum(data$Assistants) 
      print(res)
    })
    
    output$mean_score <- renderPrint({
      req(input_file())
      data <- input_file()
      data <- data[!data$Result == "tied",]
      res = sum(data$Score) / nrow(data)
      print(res)
    })
    
    output$grafico2 <- renderPlot({
      req(input_file())
      data <- input_file()
      maxKills = max(data$Kills)
      maxDeaths = max(data$Deaths)
      maxAssistants = max(data$Assistants)
      H <- c(maxKills, maxDeaths, maxAssistants)
      M <- c("Max Kills", "Max Deaths", "Max Assistants")
      barplot(H,names.arg=M,xlab="Data",ylab="Número",col="#FF6058",
              main="Máximos",border="black")
    })
    
    output$historico <- renderPlot({
      req(input_file())
      data <- input_file()
      x = c(1:nrow(data))
      plot(x, data$Score, type = "l", title = "Historico #partidas vs Score")
    })
    
    output$agente_prefer <- renderImage({
      req(input_file())
      data <- input_file()
      agentes_list = c("Astra", "Breach", "Brimstone", "Chamber", "Cypher", "Fade", "Harbor", "Jett", "KAY/O", "Killjoy", 
                       "Neon", "Omen", "Phoenix", "Raze", "Reyna", "Sage", "Skye", "Sova", "Viper", "Yoru")
      total = 0
      total_a = 0
      agente_ = ""
      for(i in agentes_list){
        total = sum(with(data,Agent == i))
        if(total > total_a){
          total_a = total
          agente_ = i
        }
      }
      indice = 0
      for(i in 1:20){
        if(agentes_list[i] == agente_){
          indice = i
        }
      }
      agente(indice)
    })
    
    output$mapa_prefer <- renderImage({
      req(input_file())
      data <- input_file()
      mapas_list = c("Ascent", "Split", "Haven", "Bind", "Icebox", "Breeze", "Fracture", "Pearl", "Lotus")
      total_ = 0
      total_a_ = 0
      mapa_ = ""
      for(i in mapas_list){
        total_ = sum(with(data,Map == i))
        if(total_ > total_a_){
          total_a_ = total_
          mapa_ = i
        }
      }
      indice_ = 0
      for(i in 1:9){
        if(mapas_list[i] == mapa_){
          indice_ = i
        }
      }
      mapas(indice_)
    })
    
    input_file <- reactive({
      if (is.null(input$file)) {
        return("")
      }
      
      read.csv(file = input$file$datapath)
    })
  
    output$table <- DT::renderDataTable({
      
      req(input_file())
      
      data <- input_file()
      
      data
    })
  
}
