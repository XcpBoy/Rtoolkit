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


#' @export
function_registry <- function() {
  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 1: EXPLORACION Y ESTRUCTURA DE DATOS\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("1. glimpse()\n")
  cat("   * Plantilla: glimpse(df)\n")
  cat("   * Descripcion: Muestra un resumen transpuesto de los datos (columnas como filas) para ver todos los tipos de variables.\n")
  cat("   * Inputs: 'df' (Requerido) -> El dataframe a explorar.\n\n")
  
  cat("2. str()\n")
  cat("   * Plantilla: str(df)\n")
  cat("   * Descripcion: Muestra la estructura interna del objeto en R base. Similar a glimpse pero mas tecnico.\n")
  cat("   * Inputs: 'object' (Requerido) -> El objeto o dataframe a evaluar.\n\n")
  
  cat("3. summary()\n")
  cat("   * Plantilla: summary(df)\n")
  cat("   * Descripcion: Genera estadisticas descriptivas basicas (min, max, mean, cuartiles) para cada columna.\n")
  cat("   * Inputs: 'object' (Requerido) -> El dataframe o vector numerico.\n\n")
  
  cat("4. table()\n")
  cat("   * Plantilla: table(df$columna)\n")
  cat("   * Descripcion: Crea una tabla de contingencia con el conteo de frecuencias de los valores (ideal para ver errores de tipeo en categorias).\n")
  cat("   * Inputs: '... ' (Requerido) -> Uno o mas vectores/columnas para cruzar y contar.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 2: VERBOS PRINCIPALES DE DPLYR (MANIPULACION)\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("5. select()\n")
  cat("   * Plantilla: df_nuevo <- df %>% select(col1, col2, -col3)\n")
  cat("   * Descripcion: Selecciona, excluye (con '-') o reordena columnas de un dataframe.\n")
  cat("   * Inputs: '... ' (Requerido) -> Nombres de las columnas a mantener o excluir.\n\n")
  
  cat("6. filter()\n")
  cat("   * Plantilla: df_nuevo <- df %>% filter(columna == 'Valor' & num > 10)\n")
  cat("   * Descripcion: Filtra filas que cumplan con condiciones logicas (==, !=, >, <, %in%, is.na()).\n")
  cat("   * Inputs: '... ' (Requerido) -> Condiciones logicas que deben evaluar a TRUE.\n\n")
  
  cat("7. mutate()\n")
  cat("   * Plantilla: df_nuevo <- df %>% mutate(nueva_col = col1 + col2)\n")
  cat("   * Descripcion: Crea nuevas columnas o modifica las existentes manteniendo el mismo numero de filas.\n")
  cat("   * Inputs: 'name = value' (Requerido) -> Nombre de la columna nueva y la operacion/valor que contendra.\n\n")
  
  cat("8. group_by()\n")
  cat("   * Plantilla: df_agrupado <- df %>% group_by(categoria1, categoria2)\n")
  cat("   * Descripcion: Agrupa el dataframe silenciosamente para que funciones como summarise() o mutate() operen por grupo.\n")
  cat("   * Inputs: '... ' (Requerido) -> Columnas categoricas por las cuales agrupar.\n\n")
  
  cat("9. summarise() / summarize()\n")
  cat("   * Plantilla: df_resumen <- df %>% group_by(cat) %>% summarise(promedio = mean(num, na.rm=T), .groups = 'drop')\n")
  cat("   * Descripcion: Colapsa los datos en una sola fila por grupo, calculando metricas resumen.\n")
  cat("   * Inputs: 'name = value' (Requerido) -> Nombre de la metrica y la funcion matematica (mean, sum, n()).\n")
  cat("             '.groups' (Opcional) -> Usar 'drop' para desagrupar despues de resumir.\n\n")
  
  cat("10. arrange()\n")
  cat("   * Plantilla: df_ordenado <- df %>% arrange(desc(columna_num))\n")
  cat("   * Descripcion: Ordena las filas del dataframe basado en los valores de una o mas columnas.\n")
  cat("   * Inputs: '... ' (Requerido) -> Columnas por las cuales ordenar. Usa desc() para orden descendente.\n\n")
  
  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 3: FUNCIONES AUXILIARES, LOGICAS Y MANEJO DE NAs\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("11. if_else()\n")
  cat("   * Plantilla: df %>% mutate(nueva_col = if_else(condicion_logica, valor_si_true, valor_si_false))\n")
  cat("   * Descripcion: Operador condicional vectorizado. Si pasa X, pon Y, sino pon Z.\n")
  cat("   * Inputs: 'condition' (Requerido) -> Evaluacion logica.\n")
  cat("             'true' (Requerido) -> Valor si se cumple.\n")
  cat("             'false' (Requerido) -> Valor si no se cumple.\n\n")
  
  cat("12. case_when()\n")
  cat("   * Plantilla: df %>% mutate(cat = case_when(col < 10 ~ 'Bajo', col < 20 ~ 'Medio', TRUE ~ 'Alto'))\n")
  cat("   * Descripcion: Un if_else multiple. Evalua multiples condiciones en orden.\n")
  cat("   * Inputs: 'condicion ~ valor' (Requerido) -> Multiples formulas logicas. TRUE ~ 'valor' funciona como el 'else' final.\n\n")
  
  cat("13. drop_na()\n")
  cat("   * Plantilla: df %>% drop_na(col1, col2)\n")
  cat("   * Descripcion: Elimina las FILAS enteras que tengan al menos un NA en las columnas especificadas (o en todas si se deja vacio).\n")
  cat("   * Inputs: '... ' (Opcional) -> Columnas donde buscar NAs. Si esta vacio, evalua toda la tabla.\n\n")
  
  cat("14. replace_na()\n")
  cat("   * Plantilla: df %>% mutate(col1 = replace_na(col1, 0))\n")
  cat("   * Descripcion: Reemplaza los NAs de una columna por un valor especifico.\n")
  cat("   * Inputs: 'data' (Requerido) -> Vector o lista con los valores de reemplazo.\n\n")
  
  cat("15. Funciones matematicas internas\n")
  cat("   * mean(x, na.rm=T) -> Promedio\n")
  cat("   * sum(x, na.rm=T) -> Sumatoria\n")
  cat("   * n() -> Cuenta el numero de filas en el grupo actual (no requiere inputs)\n")
  cat("   * n_distinct(x) -> Cuenta valores unicos excluyendo duplicados\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 4: SELECCION INTELIGENTE Y OPERACIONES POR FILA (TALLER 9)\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("16. Helpers de select() (starts_with, ends_with, contains, where)\n")
  cat("   * Plantilla: select(starts_with('spp'), where(is.numeric))\n")
  cat("   * Descripcion: Permiten elegir columnas por su nombre o tipo de dato sin escribirlas todas.\n")
  cat("   * Inputs: 'match' (Requerido) -> El string a buscar o la funcion (ej. is.numeric) a evaluar.\n\n")
  
  cat("17. across()\n")
  cat("   * Plantilla: df %>% summarise(across(where(is.numeric), ~ mean(.x, na.rm=T)))\n")
  cat("   * Descripcion: Aplica una funcion a multiples columnas a la vez (por COLUMNAS).\n")
  cat("   * Inputs: '.cols' (Requerido) -> Columnas a afectar.\n")
  cat("             '.fns' (Requerido) -> La funcion a aplicar. (Usa ~ y .x para notacion lambda).\n\n")

  cat("18. rowwise()\n")
  cat("   * Plantilla: df %>% rowwise() %>% mutate(total = sum(c(col1, col2)))\n")
  cat("   * Descripcion: Agrupa el dataframe FILA por FILA. Funciones como mean() operaran horizontalmente en lugar de verticalmente.\n")
  cat("   * Inputs: Ninguno requerido. Se debe usar ungroup() al finalizar si se haran mas operaciones.\n\n")
  
  cat("19. c_across()\n")
  cat("   * Plantilla: df %>% rowwise() %>% mutate(media = mean(c_across(starts_with('spp')), na.rm=T))\n")
  cat("   * Descripcion: Se usa DENTRO de rowwise(). Combina columnas seleccionadas inteligentemente para que funciones como mean/sum las entiendan.\n")
  cat("   * Inputs: 'cols' (Requerido) -> Columnas a combinar.\n\n")
  
  cat("20. rowSums()\n")
  cat("   * Plantilla: df %>% mutate(total = rowSums(select(., starts_with('spp')), na.rm=T))\n")
  cat("   * Descripcion: Alternativa rapida a rowwise() para sumar filas. Funciona en R base.\n")
  cat("   * Inputs: 'x' (Requerido) -> Un dataframe solo con columnas numericas.\n")
  cat("             'na.rm' (Opcional) -> TRUE para ignorar NAs.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 5: TRANSFORMACION (PIVOT) Y JOINS\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("21. pivot_longer()\n")
  cat("   * Plantilla: df %>% pivot_longer(cols = starts_with('spp'), names_to = 'especie', values_to = 'conteo')\n")
  cat("   * Descripcion: Hace la tabla 'mas larga', pasando nombres de columnas a una nueva columna (names_to) y sus datos a otra (values_to).\n")
  cat("   * Inputs: 'cols' (Requerido) -> Columnas a pivotar.\n")
  cat("             'names_to' (Requerido) -> String, nombre de la columna que guardara los nombres de las columnas viejas.\n")
  cat("             'values_to' (Requerido) -> String, nombre de la columna que guardara los valores.\n\n")
  
  cat("22. pivot_wider()\n")
  cat("   * Plantilla: df %>% pivot_wider(names_from = especie, values_from = conteo, values_fill = 0)\n")
  cat("   * Descripcion: Hace la tabla 'mas ancha', tomando categorias de una columna y volviendolas nuevas columnas independientes.\n")
  cat("   * Inputs: 'names_from' (Requerido) -> Columna de donde saldran los nuevos nombres de columnas.\n")
  cat("             'values_from' (Requerido) -> Columna de donde saldran los valores.\n")
  cat("             'values_fill' (Opcional) -> Con que rellenar si no hay dato (ej. 0 en vez de NA).\n\n")
  
  cat("23. left_join()\n")
  cat("   * Plantilla: df_final <- left_join(df_izq, df_der, by = 'columna_llave')\n")
  cat("   * Descripcion: Une dos bases de datos, manteniendo TODAS las filas de la tabla izquierda y pegandole la info de la derecha que coincida.\n")
  cat("   * Inputs: 'x', 'y' (Requeridos) -> Los dos dataframes.\n")
  cat("             'by' (Requerido) -> String con el nombre de la columna que tienen en comun.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 6: VISUALIZACION (GGPLOT2) Y FACTORES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("24. fct_infreq() y fct_reorder() (del paquete forcats)\n")
  cat("   * fct_infreq(col_categorica): Ordena factores por su conteo/frecuencia (Ideal para graficos de barras).\n")
  cat("   * fct_reorder(col_categorica, col_numerica): Ordena una categoria en base al valor de otra columna.\n\n")
  
  cat("25. ggplot() + aes()\n")
  cat("   * Plantilla: ggplot(df, aes(x = col1, y = col2, fill = col_cat))\n")
  cat("   * Descripcion: Inicia el lienzo. aes() mapea variables de los datos a propiedades visuales (x, y, color, fill, shape).\n")
  cat("   * Inputs: 'data' (Requerido) -> El dataframe.\n")
  cat("             'mapping = aes(...)' (Requerido) -> Mapeo estetico.\n\n")
  
  cat("26. Geometrias (Geoms)\n")
  cat("   * geom_point(): Graficos de dispersion (requiere x, y).\n")
  cat("   * geom_col(): Grafico de barras con valores especificos (requiere x, y). Identity stat.\n")
  cat("   * geom_bar(): Grafico de barras de conteo automatico (requiere solo x).\n")
  cat("   * geom_boxplot(): Diagramas de caja (requiere x categorico, y numerico).\n")
  cat("   * geom_line(): Graficos de series de tiempo (requiere x, y, y a veces group=1).\n\n")
  
  cat("27. facet_wrap() / facet_grid()\n")
  cat("   * Plantilla: + facet_wrap(~ variable_categorica)\n")
  cat("   * Descripcion: Crea multiples sub-graficos separados por los valores de una variable.\n")
  cat("   * Inputs: 'facets' (Requerido) -> Formula usando '~' antes del nombre de la variable.\n\n")
  
  cat("28. labs() y coord_flip()\n")
  cat("   * labs(title='X', x='Eje X', y='Eje Y', fill='Leyenda'): Añade etiquetas.\n")
  cat("   * coord_flip(): Intercambia los ejes X y Y (hace horizontales los boxplots o barras).\n\n")
  
}

#' @export
ggplot_empty_templates <- function() {
  cat("\n======================================================================\n")
  cat("             MASTER TEMPLATES: ESTRUCTURA DE GGPLOT2\n")
  cat("======================================================================\n\n")

  cat("# 1. PLANTILLA MAESTRA DETALLADA\n")
  cat("ggplot(data = <The DATA>) + \n")
  cat("  # 1. ESTETICAS (Aesthetics)\n")
  cat("  aes(x = <X_VAR>, y = <Y_VAR>, color = <GROUP_VAR>, fill = <GROUP_VAR>) + \n\n")
  cat("  # 2. GEOMETRIAS (Geoms)\n")
  cat("  geom_<TYPE>(\n")
  cat("    mapping = aes(<LOCAL_AESTHETICS>),\n")
  cat("    stat = '<STAT>', \n")
  cat("    position = '<POSITION>'\n")
  cat("  ) + \n\n")
  cat("  # 2.1 Regresiones (On the fly)\n")
  cat("  geom_smooth(method = 'lm', se = TRUE) + \n")
  cat("  # Nota: Para modelos fuera del plot usa -> modelo <- lm(y ~ x, data = df)\n\n")
  cat("  # 3. FACETAS (Facets - para multiples paneles)\n")
  cat("  facet_wrap(~ <VAR>) + # o facet_grid(<VAR_Y> ~ <VAR_X>)\n\n")
  cat("  # 4. ESCALAS (Scales - colores, ejes, tamanos)\n")
  cat("  scale_<AXIS>_<TYPE>() +\n")
  cat("  scale_color_manual(values = c('color1', 'color2')) + \n\n")
  cat("  # 5. COORDENADAS (Coordinates)\n")
  cat("  coord_flip() + # Ejemplo: para rotar el grafico\n\n")
  cat("  # 6. ETIQUETAS (Labels)\n")
  cat("  labs(\n")
  cat("    title = 'Titulo del Plot',\n")
  cat("    subtitle = 'Subtitulo informativo',\n")
  cat("    x = 'Eje X',\n")
  cat("    y = 'Eje Y',\n")
  cat("    caption = 'Fuente de los datos',\n")
  cat("    color = 'Leyenda'\n")
  cat("  ) + \n\n")
  cat("  # 7. TEMAS (Theme - apariencia visual no-datos)\n")
  cat("  theme_minimal() + \n")
  cat("  theme(\n")
  cat("    legend.position = 'bottom',\n")
  cat("    axis.text.x = element_text(angle = 45)\n")
  cat("  )\n\n")

  cat("# 2. PLANTILLA RESUMIDA (Accion Rapida)\n")
  cat("ggplot(data = <The DATA>) + \n")
  cat("  aes(x = <X_VAR>, y = <Y_VAR>, color = <GROUP_VAR>, fill = <GROUP_VAR>) + \n")
  cat("  geom_<TYPE>(mapping = aes(<LOCAL_AESTHETICS>), stat = '<STAT>', position = '<POSITION>') + \n")
  cat("  facet_wrap(~ <VAR>) + \n")
  cat("  scale_<AXIS>_<TYPE>() + \n")
  cat("  scale_color_manual(values = c('color1', 'color2')) + \n")
  cat("  labs(title = 'Titulo', x = 'Eje X', y = 'Eje Y', color = 'Leyenda') + \n")
  cat("  theme_dark() + \n")
  cat("  theme(legend.position = 'bottom', axis.text.x = element_text(angle = 45))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GALERIA DE GEOMS: PLANTILLAS LISTAS PARA RELLENAR\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("1. DISPERSION (Puntos)\n")
  cat("   geom_point(aes(shape = <CAT>, size = <NUM>), alpha = 0.7, color = 'blue')\n\n")

  cat("2. LINEAS (Tendencias temporales)\n")
  cat("   geom_line(aes(group = <CAT>, linetype = <CAT>), linewidth = 1)\n\n")

  cat("3. BARRAS (Conteo automatico de filas)\n")
  cat("   geom_bar(aes(fill = <CAT>), position = 'dodge')\n\n")

  cat("4. COLUMNAS (Cuando ya tienes el valor calculado en Y)\n")
  cat("   geom_col(aes(x = fct_reorder(<CAT>, <NUM>), y = <NUM>))\n\n")

  cat("5. BOXPLOTS (Distribuciones)\n")
  cat("   geom_boxplot(outlier.colour = 'red', notch = FALSE)\n\n")

  cat("6. TEXTO (Etiquetar puntos)\n")
  cat("   geom_text(aes(label = <VAR_TEXTO>), vjust = -0.5, hjust = 0.5)\n\n")

  cat("7. TENDENCIA / REGRESION\n")
  cat("   geom_smooth(method = 'lm', se = TRUE, color = 'red')\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" TIPS RAPIDOS DE 'AES' vs 'PARAMETROS'\n")
  cat("----------------------------------------------------------------------\n")
  cat("* DENTRO de aes(): Si el color/forma depende de una COLUMNA de tus datos.\n")
  cat("* FUERA de aes(): Si quieres que TODO el grafico sea de un color fijo.\n")
  cat("======================================================================\n")
}


#' @export
pivot_longer_recap <- function() {
  cat("\n======================================================================\n")
  cat("             COMO FUNCIONA PIVOT_LONGER (EJEMPLO AÑOS)\n")
  cat("======================================================================\n\n")

  cat("1. DF ORIGINAL (Formato Ancho/Wide):\n")
  cat("------------------------------------\n")
  cat("Individuo  |  2020  |  2021  |  2022\n")
  cat("-----------|--------|--------|------\n")
  cat("   A       |   10   |   12   |   15 \n\n")

  cat("2. EL CODIGO QUE DEBES USAR:\n")
  cat("---------------------------\n")
  cat("df_largo <- df_ancho %>% \n")
  cat("  pivot_longer(\n")
  cat("    cols = c('2020', '2021', '2022'), # Columnas que se van a derretir\n")
  cat("    names_to = 'Anio',                # Donde van los TITULOS (2020, 2021...)\n")
  cat("    values_to = 'Conteo'              # Donde van los NUMEROS (10, 12, 15...)\n")
  cat("  )\n\n")

  cat("3. DF RESULTANTE (Formato Largo/Long):\n")
  cat("------------------------------------\n")
  cat("Individuo  |  Anio  |  Conteo\n")
  cat("-----------|--------|--------\n")
  cat("   A       |  2020  |    10  \n")
  cat("   A       |  2021  |    12  \n")
  cat("   A       |  2022  |    15  \n\n")

  cat("TIP: Ahora ya puedes hacer ggplot(df_largo, aes(x = Anio, y = Conteo)) \n")
  cat("======================================================================\n")
}
