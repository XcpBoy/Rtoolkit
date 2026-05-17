#' @export
prompt_parcial <- function() {
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
  cat("   * Descripcion: Un if_else multiple. Evalua multiples condiciones en orden. Util para categorizar variables.\n")
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
  cat(" GRUPO 4: SELECCION INTELIGENTE Y OPERACIONES POR FILA\n")
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
  cat("   * geom_line(): Graficos de series de tiempo (requiere x, y, y a veces group=1).\n")
  cat("   * geom_vline(): Añade lineas verticales de referencia (ej. xintercept = 75).\n\n")
  
  cat("27. facet_wrap() / facet_grid()\n")
  cat("   * Plantilla: + facet_wrap(~ variable_categorica)\n")
  cat("   * Descripcion: Crea multiples sub-graficos separados por los valores de una variable.\n")
  cat("   * Inputs: 'facets' (Requerido) -> Formula usando '~' antes del nombre de la variable.\n\n")
  
  cat("28. labs() y coord_flip()\n")
  cat("   * labs(title='X', x='Eje X', y='Eje Y', fill='Leyenda'): Añade etiquetas.\n")
  cat("   * coord_flip(): Intercambia los ejes X y Y (hace horizontales los boxplots o barras).\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 7: CONDICIONALES CLASICOS Y CONTROL DE FLUJO\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("29. if () { ... } else { ... }\n")
  cat("   * Plantilla: if (x > 0) { print('Positivo') } else { print('Negativo') }\n")
  cat("   * Descripcion: Expresion condicional basica. Ejecuta comandos diferentes dependiendo de si un elemento cumple o no una condicion (No vectorizado, opera sobre un solo valor).\n")
  cat("   * Inputs: Condicion logica dentro del parentesis, y la accion dentro de corchetes {}.\n\n")

  cat("30. ifelse()\n")
  cat("   * Plantilla: ifelse(vector > 0, 1/(vector+10), 'no aplica')\n")
  cat("   * Descripcion: Expresion condicional vectorizada. Revisa para cada uno de los elementos de un vector si la condicion se cumple y responde de acuerdo a eso.\n")
  cat("   * Inputs: 'test' (Requerido) -> Pregunta logica (T o F).\n")
  cat("             'yes' (Requerido) -> Respuesta si es TRUE.\n")
  cat("             'no' (Requerido) -> Respuesta si es FALSE.\n\n")

  cat("31. which.min() / which.max()\n")
  cat("   * Plantilla: which.min(df$columna)\n")
  cat("   * Descripcion: Devuelve la posicion (indice) del elemento con el valor minimo o maximo en un vector.\n")
  cat("   * Inputs: 'x' (Requerido) -> Vector numerico.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 8: FUNCIONES PROPIAS Y BUCLES (LOOPS)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("32. function()\n")
  cat("   * Plantilla: mi_funcion <- function(x, y) { r <- (x+y)*2 ; return(r) }\n")
  cat("   * Descripcion: Permite crear funciones propias para evitar repetir codigo.\n")
  cat("   * Inputs: Argumentos de entrada dentro del parentesis, cuerpo de la funcion en corchetes {}.\n\n")

  cat("33. return()\n")
  cat("   * Plantilla: return(resultado)\n")
  cat("   * Descripcion: Define el valor final que la funcion debe arrojar (salida). Los objetos creados dentro de la funcion no se guardan en el ambiente.\n")
  cat("   * Inputs: Variable o calculo a retornar.\n\n")

  cat("34. for () { ... }\n")
  cat("   * Plantilla: for (i in 1:10) { print(i) }\n")
  cat("   * Descripcion: Realiza la misma operacion multiples veces evaluando de uno en uno los elementos de un vector. Util para procesos acumulativos (ej. genetica de poblaciones).\n")
  cat("   * Inputs: '(variable in vector_o_rango)' seguido de las operaciones en corchetes {}.\n\n")

  cat("35. seq()\n")
  cat("   * Plantilla: seq(-5, 5)\n")
  cat("   * Descripcion: Genera secuencias de numeros regulares. Ideal para definir el rango de un for-loop.\n")
  cat("   * Inputs: 'from' (Requerido) -> Inicio, 'to' (Requerido) -> Fin, 'by' (Opcional) -> Pasos.\n\n")

  cat("36. vector() / numeric()\n")
  cat("   * Plantilla: s_n <- numeric(100)  o  s_n <- vector()\n")
  cat("   * Descripcion: Inicializa vectores vacios antes de un loop para poder almacenar los resultados iterativos.\n")
  cat("   * Inputs: 'length' (Opcional/Requerido) -> El tamaño reservado del vector.\n\n")

  cat("37. cat() y paste()\n")
  cat("   * Plantilla: cat('El numero', i, 'al cuadrado es', i^2, '\\n')\n")
  cat("   * Descripcion: Imprimen y concatenan texto. 'cat' lo saca directo a la consola (ideal para loops y funciones), mientras 'paste' crea un string.\n")
  cat("   * Inputs: '... ' -> Multiples variables o strings separados por comas.\n\n")

  cat("38. runif()\n")
  cat("   * Plantilla: runif(1, min=1, max=10)\n")
  cat("   * Descripcion: Obtiene numeros aleatorios a partir de una distribucion uniforme.\n")
  cat("   * Inputs: 'n' (Requerido) -> Cantidad, 'min' -> Limite inferior, 'max' -> Limite superior.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 9: CADENAS DE CARACTERES Y EXPRESIONES REGULARES (STRINGR)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("39. str_length()\n")
  cat("   * Plantilla: str_length(string_vector)\n")
  cat("   * Descripcion: Cuenta cuantos elementos/caracteres tiene cada uno de los strings de un vector.\n")
  cat("   * Inputs: 'string' (Requerido) -> Vector de caracteres.\n\n")

  cat("40. str_view()\n")
  cat("   * Plantilla: str_view(secuencias, 'ATG', match = TRUE)\n")
  cat("   * Descripcion: Resalta en consola exactamente lo que coincide con el patron buscado. Ideal para probar regex.\n")
  cat("   * Inputs: 'string' (Requerido), 'pattern' (Requerido) -> Patron a buscar, 'match' (Opcional) -> Si es FALSE devuelve lo que NO hace match.\n\n")

  cat("41. str_detect()\n")
  cat("   * Plantilla: df %>% filter(str_detect(columna, 'virus'))\n")
  cat("   * Descripcion: Pregunta si el string contiene el patron. Devuelve un vector logico (TRUE/FALSE). Muy util dentro de filter().\n")
  cat("   * Inputs: 'string' (Requerido), 'pattern' (Requerido).\n\n")

  cat("42. str_count()\n")
  cat("   * Plantilla: str_count(secuencias, 'ATG')\n")
  cat("   * Descripcion: Cuenta cuantas veces aparece el patron en cada string.\n")
  cat("   * Inputs: 'string' (Requerido), 'pattern' (Requerido).\n\n")

  cat("43. regex()\n")
  cat("   * Plantilla: str_detect(text, regex('homo sapiens', ignore_case = TRUE))\n")
  cat("   * Descripcion: Modificador de patrones. Permite hacer la busqueda insensible a mayusculas/minusculas.\n")
  cat("   * Inputs: 'pattern' (Requerido), 'ignore_case' (Opcional) -> TRUE para ignorar diferencias de caja.\n\n")
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
  cat("  # 2.1 Regresiones y Lineas de Referencia (On the fly)\n")
  cat("  geom_smooth(method = 'lm', se = TRUE) + \n")
  cat("  geom_vline(xintercept = <VALOR_NUMERICO>, linetype = 'dashed', color = 'red') + \n")
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

  cat("8. LINEAS DE REFERENCIA\n")
  cat("   geom_vline(xintercept = <NUM>, linetype = 'dashed')\n")
  cat("   geom_hline(yintercept = <NUM>, linetype = 'dashed')\n\n")

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
  cat("    names_to = 'Año',                # Donde van los TITULOS (2020, 2021...)\n")
  cat("    values_to = 'Conteo'              # Donde van los NUMEROS (10, 12, 15...)\n")
  cat("  )\n\n")

  cat("3. DF RESULTANTE (Formato Largo/Long):\n")
  cat("------------------------------------\n")
  cat("Individuo  |  Año  |  Conteo\n")
  cat("-----------|--------|--------\n")
  cat("   A       |  2020  |    10  \n")
  cat("   A       |  2021  |    12  \n")
  cat("   A       |  2022  |    15  \n\n")

  cat("TIP: Ahora ya puedes hacer ggplot(df_largo, aes(x = Anio, y = Conteo)) \n")
  cat("======================================================================\n")
}

#' @export
regex_recap <- function() {
  cat("\n======================================================================\n")
  cat("        ESTRUCTURA Y SINTAXIS DE EXPRESIONES REGULARES (REGEX)\n")
  cat("======================================================================\n\n")
  
  cat("Las expresiones regulares son patrones flexibles para buscar texto.\n\n")
  
  cat("1. OPERADOR OR (Alternancia) '|'\n")
  cat("------------------------------------\n")
  cat("   * Ejemplo: 'TAA|TAG|TGA'\n")
  cat("   * Utilidad: Busca el primer string, O el segundo, O el tercero.\n\n")
  
  cat("2. CLASES DE CARACTERES '[...]' (Menu de opciones)\n")
  cat("------------------------------------\n")
  cat("   * Ejemplo: '[AG]'\n")
  cat("   * Utilidad: En esa posicion especifica, puede ir CUALQUIERA de las letras enlistadas (en este caso A o G).\n\n")
  
  cat("3. CLASES DE CARACTERES NEGADAS '[^...]'\n")
  cat("------------------------------------\n")
  cat("   * Ejemplo: '[^ATGC]'\n")
  cat("   * Utilidad: El 'caret' (^) dentro de los corchetes significa NO CONTIENE. Util para buscar caracteres invalidos (todo lo que NO sea A, T, G o C).\n\n")
  
  cat("4. RANGOS '[A-Z]' o '[0-9]'\n")
  cat("------------------------------------\n")
  cat("   * Ejemplo: 'A[A-Z][0-9]'\n")
  cat("   * Utilidad: Busca cualquier letra mayuscula o cualquier digito en una posicion especifica. En este ejemplo busca: 'A', seguida de cualquier letra mayuscula, seguida de cualquier numero.\n\n")

  cat("======================================================================\n")
}

#' @export
loops_recap <- function() {
  cat("\n======================================================================\n")
  cat("                 ESTRUCTURA BASICA DE UN FOR-LOOP\n")
  cat("======================================================================\n\n")
  
  cat("Los loops son utiles cuando el valor que vas a estimar depende directamente del valor calculado en la iteracion anterior (procesos acumulativos).\n\n")
  
  cat("1. PREPARACION:\n")
  cat("---------------------------\n")
  cat("Siempre debes crear un vector vacio antes para guardar tus resultados.\n")
  cat("resultados <- numeric(100) # Vector vacio de tamaño 100\n\n")

  cat("2. EL BUCLE (LOOP):\n")
  cat("---------------------------\n")
  cat("for (i in 1:100) {\n")
  cat("  # La operacion matematica o logica usando la 'i'\n")
  cat("  resultados[i] <- i + (i - 1)\n")
  cat("}\n\n")
  
  cat("3. CON CONDICIONES INTERNAS (If / Break):\n")
  cat("---------------------------\n")
  cat("Dentro del loop puedes usar 'if' para detenerlo prematuramente si se alcanza un umbral.\n")
  cat("for (i in 1:100) {\n")
  cat("  if (resultados[i-1] < 25) {\n")
  cat("      break # Detiene el loop completamente\n")
  cat("  }\n")
  cat("}\n")
  cat("======================================================================\n")
}
