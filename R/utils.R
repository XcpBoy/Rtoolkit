#' @export
prompt_parcial <- function() {
  cat("\n--- COPIA DESDE AQUÍ ---\n\n")
  cat("Actúa como un profesor experto en R, análisis de datos con tidyverse y representacion de datos con ggplot2.\n\n")
  cat("Tu objetivo es generar código en R que sea:\n")
  cat("1. Correcto\n2. Claro\n3. Fácil de explicar línea por línea en un examen oral\n\n")
  cat("Reglas obligatorias:\n")
  cat("* Usa exclusivamente tidyverse (dplyr, tidyr, ggplot2) o R base a menos que sea estrictamente necesario usar otra libreria.\n")
  cat("* Explica cada línea de código en comentarios (# ...) justo encima de la línea\n")
  cat("* Usa nombres de variables claros y semánticos\n")
  cat("* Evita código innecesariamente complejo\n")
  cat("* Prioriza claridad sobre optimización\n\n")
  cat("Estructura de la respuesta:\n")
  cat("1. Explicación breve del objetivo del análisis (máx 3 líneas)\n")
  cat("2. Código paso a paso dividido por secciones\n")
  cat("3. En cada sección:\n")
  cat("   * Explicación conceptual breve\n")
  cat("   * Código con comentarios detallados\n\n")
  cat("Si hay ambigüedades en los datos:\n")
  cat("* Decláralas explícitamente\n")
  cat("* Propón una forma razonable de manejarlas\n\n")
  cat("IMPORTANTE:\n")
  cat("* No asumas que entiendo funciones avanzadas sin explicación\n\n")
  cat("Ahora resuelve los siguiente problemas: {PEGA AQUÍ LAS PREGUNTAS DEL PARCIAL}\n\n")
  cat("Aqui esta el str() y glimpse() de la base de datos original:\n{PEGA AQUÍ EL GLIMPSE O STR}\n")
  cat("\n--- HASTA AQUÍ ---\n")
}

#' @export
theme_neon <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = "#0D0D0D", color = NA),
      panel.background = ggplot2::element_rect(fill = "#0D0D0D", color = NA),
      panel.grid.major = ggplot2::element_line(color = "#262626"),
      panel.grid.minor = ggplot2::element_blank(),
      text = ggplot2::element_text(color = "#E0E0E0"),
      axis.text = ggplot2::element_text(color = "#A0A0A0"),
      axis.title = ggplot2::element_text(color = "#E0E0E0"),
      strip.background = ggplot2::element_rect(fill = "#1A1A1A"),
      strip.text = ggplot2::element_text(color = "#11AA31", face = "bold"),
      legend.position = "bottom",
      legend.background = ggplot2::element_rect(fill = "#0D0D0D"),
      legend.key = ggplot2::element_rect(fill = "#0D0D0D")
    )
}

#' @export
neon_palette <- c("#00FF41", "#FF00FF", "#00E5FF", "#FFFF00", "#FF3131", 
                  "#FF8C00", "#9D00FF", "#F0F0F0")
