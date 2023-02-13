#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinymaterial)

material_page(
  title = "VALORANT STATS",
  nav_bar_fixed = TRUE,
  nav_bar_color = "red",
  # Place side-nav in the beginning of the UI
  material_side_nav(
    image_source = "fondosidenav.jpg",
    # Place side-nav tabs within side-nav
    material_side_nav_tabs(
      side_nav_tabs = c(
        "Predecir" = "example_side_nav_tab_1",
        "Estadísticas" = "example_side_nav_tab_2"
      ),
      icons = c("home", "insert_chart")
    )
  ),
  # Define side-nav tab content
  material_side_nav_tab_content(
    side_nav_tab_id = "example_side_nav_tab_1",
    material_card(
      title = "¿Cómo ganar en Valorant?",
      depth = 2,
      material_row(
          material_column(
            width = 3,
            material_dropdown(
              input_id = "agent",
              label = "Agente",
              choices = c(
                "Astra" = 1, "Breach" = 2, "Brimstone" = 3,
                "Chamber" = 4, "Cypher" = 5, "Fade" = 6,
                "Harbor" = 7, "Jett" = 8, "KAY/O" = 9,
                "Killjoy" = 10, "Neon" = 11, "Omen" = 12,
                "Phoenix" = 13, "Raze" = 14, "Reyna" = 15,
                "Sage" = 16, "Skye" = 17, "Sova" = 18,
                "Viper" = 19, "Yoru" = 20
                ),
                selected = 1
            )
          ),
        material_column(
          width = 3,
          material_dropdown(
            input_id = "map",
            label = "Mapa",
            choices = c(
              "Ascent" = 1, "Split" = 2, "Haven" = 3,
              "Bind" = 4, "Icebox" = 5, "Breeze" = 6,
              "Fracture" = 7, "Pearl" = 8, "Lotus" = 9
            ),
            selected = 1
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "survived",
            label = "Rondas sobreviviendo",
            initial_value = 0,
            min_value = 0,
            max_value = 13
          )
        ),
        material_column(
          width = 3,
          material_number_box(
            input_id = "damage",
            label = "Daño",
            initial_value = 0,
            min_value = 0,
            max_value = 7500
          )
        )
      ),
      material_row(
        material_column(
          width = 3,
          material_number_box(
            input_id = "damageReceived",
            label = "Daño Recibido",
            initial_value = 0,
            min_value = 0,
            max_value = 6000
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "kills",
            label = "Kills",
            initial_value = 0,
            min_value = 0,
            max_value = 50
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "deaths",
            label = "Deaths",
            initial_value = 0,
            min_value = 0,
            max_value = 20
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "assistants",
            label = "Asistencias",
            initial_value = 0,
            min_value = 0,
            max_value = 50
          )
        )
      ),
      material_row(
        material_column(
          width = 3,
          material_slider(
            input_id = "grenadeCasts",
            label = "Habilidad en granadas",
            initial_value = 0,
            min_value = 0,
            max_value = 30
          )
        ),
        material_column(
          width = 3,
          material_number_box(
            input_id = "econrating",
            label = "Economía",
            initial_value = 0,
            min_value = 0,
            max_value = 200
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "traded",
            label = "Intercambios",
            initial_value = 0,
            min_value = 0,
            max_value = 10
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "flawless",
            label = "Rondas Impecable",
            initial_value = 0,
            min_value = 0,
            max_value = 10
          )
        )
      ),
      material_row(
        material_column(
          width = 3,
          material_slider(
            input_id = "teamAces",
            label = "Team Aces",
            initial_value = 0,
            min_value = 0,
            max_value = 5
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "clutches",
            label = "Desactivaciones",
            initial_value = 0,
            min_value = 0,
            max_value = 10
          )
        ),
        material_column(
          width = 3,
          material_slider(
            input_id = "clutchesLost",
            label = "Desactivaciones Fallidas",
            initial_value = 0,
            min_value = 0,
            max_value = 10
          )
        ),
        material_column(
          width = 2,
          material_checkbox(
            input_id = "random",
            label = "Aleatorio",
            initial_value = FALSE,
            color = "orange"
          )
        ),
        material_column(
          width = 1,
          material_button(
            input_id = "result",
            label = "Predecir",
            color = "deep-orange"
          )
        )
      )
    ),
    material_row(
      material_column(
        width = 4,
        material_card(
          title = "Resultado",
          imageOutput("result")
        )
      ),
      material_column(
        width = 4,
        material_card(
          title = "Agente",
          imageOutput("agent")
        )
      ),
      material_column(
        width = 4,
        material_card(
          title = "Mapa",
          imageOutput("map")
        ),
      )
    ),
    material_row(
      material_column(
        width = 2,
        material_card(
          title = "Rondas sobreviviendo",
          textOutput("survived_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Daño",
          textOutput("damage_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Daño recibido",
          textOutput("damageReceived_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Kills",
          textOutput("kills_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Deaths",
          textOutput("deaths_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Asistencias",
          textOutput("assistants_text")
        )
      )
    ),
    material_row(
      material_column(
        width = 2,
        material_card(
          title = "Habilidad en granadas",
          textOutput("grenadeCasts_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Economía",
          textOutput("econrating_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Intercambios",
          textOutput("traded_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Rondas impecable",
          textOutput("flawless_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Team Aces",
          textOutput("teamAces_text")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Desactivaciones",
          textOutput("clutches_text")
        )
      ),
    ),
    material_row(
      material_column(
        width = 2,
        material_card(
          title = "Desactivaciones fallidas",
          textOutput("clutchesLost_text")
        )
      )
    )
  ),
  material_side_nav_tab_content(
    side_nav_tab_id = "example_side_nav_tab_2",
    tags$h1("Estadísticas"),
    material_row(
      material_column(
        width = 12,
        material_card(
          fileInput("file", h3("Cargar datos"))
        )
      )
    ),
    material_row(
      material_column(
        width = 2,
        material_card(
          title = "Número de victorias",
          textOutput("victorys")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "% de victorias",
          textOutput("percent_victory")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Total kills",
          textOutput("kills_total")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Total Deaths",
          textOutput("deaths_total")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Total Asistencias",
          textOutput("assistants_total")
        )
      ),
      material_column(
        width = 2,
        material_card(
          title = "Score promedio por partida",
          textOutput("mean_score")
        )
      )
    ),
    material_row(
      material_column(
        width = 6,
        material_card(
          title = "Agente mas utilizado",
          imageOutput("agente_prefer")
        )
      ),
      material_column(
        width = 6,
        material_card(
          title = "Mapa mas utilizado",
          imageOutput("mapa_prefer")
        )
      )
    ),
    material_row(
      material_column(
        width = 6,
        material_card(
          title = "Kills vs Score",
          plotOutput('grafico')
        )
      ),
      material_column(
        width = 6,
        material_card(
          title = "Máximo de kill, deaths y asistencias en una partida",
          plotOutput('grafico2')
        )
      )
    ),
    material_row(
      material_column(
        width = 12,
        material_card(
          title = "Historico",
          plotOutput('historico')
        )
      )
    ),
    material_row(
      material_column(
        width = 12,
        material_card(
          title = "Tabla de datos",
          DT::dataTableOutput("table")
        )
      )
    )
  )
  
)