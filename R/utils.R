#' @export
function_registry <- function() {
  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 1: EXPLORACION Y ESTRUCTURA DE DATOS\n")
  cat("----------------------------------------------------------------------\n\n")
 ·Pendientes por meter:·
  rename()
  salmon.all <- salmon.all %>% rename(
  sex = sex.x
)
relocate() falta tambien
  
  
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
  
  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 3: MANEJO DE NAs Y FUNCIONES MATEMATICAS\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("11. drop_na()\n")
  cat("   * Plantilla: df %>% drop_na(col1, col2)\n")
  cat("   * Descripcion: Elimina las FILAS enteras que tengan al menos un NA en las columnas especificadas (o en todas si se deja vacio).\n")
  cat("   * Inputs: '... ' (Opcional) -> Columnas donde buscar NAs. Si esta vacio, evalua toda la tabla.\n\n")
  
  cat("12. replace_na()\n")
  cat("   * Plantilla: df %>% mutate(col1 = replace_na(col1, 0))\n")
  cat("   * Descripcion: Reemplaza los NAs de una columna por un valor especifico.\n")
  cat("   * Inputs: 'data' (Requerido) -> Vector o lista con los valores de reemplazo.\n\n")
  
  cat("13. Funciones matematicas internas\n")
  cat("   * n() -> Cuenta el numero de filas en el grupo actual (no requiere inputs)\n")
  cat("   * n_distinct(x) -> Cuenta valores unicos excluyendo duplicados\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 4: SELECCION INTELIGENTE Y OPERACIONES POR FILA\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("14. Helpers de select() (starts_with, ends_with, contains, where)\n")
  cat("   * Plantilla: select(starts_with('spp'), where(is.numeric))\n")
  cat("   * Descripcion: Permiten elegir columnas por su nombre o tipo de dato sin escribirlas todas.\n")
  cat("   * Inputs: 'match' (Requerido) -> El string a buscar o la funcion (ej. is.numeric) a evaluar.\n\n")
  
  cat("15. across()\n")
  cat("   * Plantilla: df %>% summarise(across(where(is.numeric), ~ mean(.x, na.rm=T)))\n")
  cat("   * Descripcion: Aplica una funcion a multiples columnas a la vez (por COLUMNAS).\n")
  cat("   * Inputs: '.cols' (Requerido) -> Columnas a afectar.\n")
  cat("             '.fns' (Requerido) -> La funcion a aplicar. (Usa ~ y .x para notacion lambda).\n\n")

  cat("16. rowwise()\n")
  cat("   * Plantilla: df %>% rowwise() %>% mutate(total = sum(c(col1, col2)))\n")
  cat("   * Descripcion: Agrupa el dataframe FILA por FILA. Funciones como mean() operaran horizontalmente en lugar de verticalmente.\n")
  cat("   * Inputs: Ninguno requerido. Se debe usar ungroup() al finalizar si se haran mas operaciones.\n\n")
  
  cat("17. c_across()\n")
  cat("   * Plantilla: df %>% rowwise() %>% mutate(media = mean(c_across(starts_with('spp')), na.rm=T))\n")
  cat("   * Descripcion: Se usa DENTRO de rowwise(). Combina columnas seleccionadas inteligentemente para que funciones como mean/sum las entiendan.\n")
  cat("   * Inputs: 'cols' (Requerido) -> Columnas a combinar.\n\n")
  
  cat("18. rowSums()\n")
  cat("   * Plantilla: df %>% mutate(total = rowSums(select(., starts_with('spp')), na.rm=T))\n")
  cat("   * Descripcion: Alternativa rapida a rowwise() para sumar filas. Funciona en R base.\n")
  cat("   * Inputs: 'x' (Requerido) -> Un dataframe solo con columnas numericas.\n")
  cat("             'na.rm' (Opcional) -> TRUE para ignorar NAs.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 5: TRANSFORMACION (PIVOT) Y JOINS\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("19. pivot_wider()\n")
  cat("   * Plantilla: df %>% pivot_wider(names_from = especie, values_from = conteo, values_fill = 0)\n")
  cat("   * Descripcion: Hace la tabla 'mas ancha', tomando categorias de una columna y volviendolas nuevas columnas independientes.\n")
  cat("   * Inputs: 'names_from' (Requerido) -> Columna de donde saldran los nuevos nombres de columnas.\n")
  cat("             'values_from' (Requerido) -> Columna de donde saldran los valores.\n")
  cat("             'values_fill' (Opcional) -> Con que rellenar si no hay dato (ej. 0 en vez de NA).\n\n")
  
  cat("20. left_join()\n")
  cat("   * Plantilla: df_final <- left_join(df_izq, df_der, by = 'columna_llave')\n")
  cat("   * Descripcion: Une dos bases de datos, manteniendo TODAS las filas de la tabla izquierda y pegandole la info de la derecha que coincida.\n")
  cat("   * Inputs: 'x', 'y' (Requeridos) -> Los dos dataframes.\n")
  cat("             'by' (Requerido) -> String con el nombre de la columna que tienen en comun.\n\n")
}

#' @export
func_recap <- function() {
  cat("\n======================================================================\n")
  cat("             CREACION Y ESTRUCTURA DE FUNCIONES PROPIAS\n")
  cat("======================================================================\n\n")

  cat("¿POR QUE USAR FUNCIONES?\n")
  cat("Con el tiempo, te encontraras realizando la misma operacion una y otra vez.\n")
  cat("En esos casos es ideal definir una funcion propia para llamarla cuando sea\n")
  cat("necesario sin tener que repetir/copiar todo el codigo cada vez.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" SINTAXIS BASICA Y COMPONENTES\n")
  cat("----------------------------------------------------------------------\n")
  cat("Toda funcion tiene 3 componentes principales: Entrada, Cuerpo y Salida.\n\n")

  cat("nombre_funcion <- function(x, y) { \n")
  cat("  # CUERPO: Lo que queramos que haga la funcion.\n")
  cat("  r <- (x + y) * 2\n")
  cat("  return(r) # SALIDA: El valor determinado en la linea final es el resultado.\n")
  cat("}\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" REGLAS Y CONCEPTOS CLAVE\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("1. Variables Locales (El ambiente de la funcion):\n")
  cat("   * Las variables u objetos creados DENTRO de una funcion (ej. la 'r' arriba)\n")
  cat("     NO se guardan en el ambiente global (Environment). Solo existen y se\n")
  cat("     usan durante la ejecucion de la funcion.\n\n")

  cat("2. El valor de Salida (Return):\n")
  cat("   * El valor determinado en la ultima linea es el resultado que se retorna.\n")
  cat("   * Es buena practica usar 'return()' para indicar claramente la salida.\n")
  cat("   * Si el resultado es texto o combinacion de texto y valores, usa 'cat()'\n")
  cat("     Ej: cat('El resultado es', valor)\n\n")

  cat("3. Flexibilidad de los Argumentos (Inputs):\n")
  cat("   * Multiples argumentos: function(x, y, z)\n")
  cat("   * Sin argumentos: function() { runif(1, min=1, max=10) }\n")
  cat("   * Vectores como argumentos: ¡'x' puede ser un solo numero o un vector entero!\n")
  cat("     Ej: Si le pasas un vector a 'mean(x)', calculara el promedio de todo el vector.\n\n")

  cat("4. Manejo de Errores por Argumentos Faltantes:\n")
  cat("   * Si la funcion exige multiples argumentos y le pasas menos de los necesarios\n")
  cat("     (ej. fun(2) cuando pide x e y), R arrojara un error diciendo:\n")
  cat("     'argument \"y\" is missing, with no default'.\n\n")

  cat("======================================================================\n")
}

#' @export
conditionals_recap <- function() {
  cat("\n======================================================================\n")
  cat("        CONDICIONALES CLASICOS, CONTROL DE FLUJO Y VECTORIZADOS\n")
  cat("======================================================================\n\n")

  cat("1. if () { ... } else { ... } (R Base - Escalar)\n")
  cat("   * Plantilla: if (x > 0) { print('Positivo') } else { print('Negativo') }\n")
  cat("   * Descripcion: Expresion condicional basica. Ejecuta comandos diferentes dependiendo de si un elemento cumple o no una condicion.\n")
  cat("   * IMPORTANTE: NO es vectorizado. Solo opera sobre un solo valor (longitud 1). Ideal para dentro de for-loops o funciones.\n\n")

  cat("2. ifelse() (R Base - Vectorizado)\n")
  cat("   * Plantilla: ifelse(vector > 0, 1/(vector+10), 'no aplica')\n")
  cat("   * Descripcion: Revisa simultaneamente para cada elemento de un vector si la condicion se cumple.\n")
  cat("   * Inputs: 'test' (Pregunta logica), 'yes' (Respuesta si TRUE), 'no' (Respuesta si FALSE).\n\n")

  cat("3. if_else() (Dplyr - Vectorizado y Estricto)\n")
  cat("   * Plantilla: df %>% mutate(nueva_col = if_else(col > 10, 'Alto', 'Bajo'))\n")
  cat("   * Descripcion: Version mejorada de ifelse(). Es mas rapido y estrictamente requiere que 'true' y 'false' sean del mismo tipo de dato (ej. ambos character).\n\n")
  
  cat("4. case_when() (Dplyr - Multiples condiciones)\n")
  cat("   * Plantilla: df %>% mutate(cat = case_when(col < 10 ~ 'Bajo', col < 20 ~ 'Medio', TRUE ~ 'Alto'))\n")
  cat("   * Descripcion: Un if_else multiple anidado. Evalua multiples condiciones en orden de arriba hacia abajo. Ideal para categorizar variables.\n")
  cat("   * Sintaxis: 'condicion ~ valor'. El 'TRUE ~ valor' final funciona como el 'else' universal para lo que no encaje arriba.\n\n")

  cat("5. which.min() / which.max()\n")
  cat("   * Plantilla: which.min(df$columna)\n")
  cat("   * Descripcion: Devuelve la POSICION (indice numerico) del elemento con el valor minimo o maximo en un vector.\n")
  cat("======================================================================\n")
}

#' @export
ggplot_recap <- function() {
  cat("\n======================================================================\n")
  cat("             MASTER TEMPLATES Y ESTRUCTURA DE GGPLOT2\n")
  cat("======================================================================\n\n")

  cat("# 1. PLANTILLA MAESTRA DETALLADA\n")
  cat("ggplot(data = <The DATA>) + \n")
  cat("  # 1. ESTETICAS GLOBALES (Aesthetics)\n")
  cat("  aes(x = <X_VAR>, y = <Y_VAR>, color = <GROUP_VAR>, fill = <GROUP_VAR>) + \n\n")
  cat("  # 2. GEOMETRIAS (Geoms)\n")
  cat("  geom_<TYPE>(\n")
  cat("    mapping = aes(<LOCAL_AESTHETICS>), # Esteticas exclusivas de esta capa\n")
  cat("    stat = '<STAT>', \n")
  cat("    position = '<POSITION>'\n")
  cat("  ) + \n\n")
  cat("  # 2.1 Regresiones y Lineas de Referencia (On the fly)\n")
  cat("  geom_smooth(method = 'lm', se = TRUE) + \n")
  cat("  geom_vline(xintercept = <VALOR_NUMERICO>, linetype = 'dashed', color = 'red') + \n\n")
  cat("  # 3. FACETAS (Facets - para multiples paneles)\n")
  cat("  facet_wrap(~ <VAR>) + # o facet_grid(<VAR_Y> ~ <VAR_X>)\n\n")
  cat("  # 4. ESCALAS (Scales - colores, ejes, tamanos)\n")
  cat("  scale_<AXIS>_<TYPE>() +\n")
  cat("  scale_color_manual(values = c('color1', 'color2')) + \n\n")
  cat("  # 5. COORDENADAS (Coordinates)\n")
  cat("  coord_flip() + # Ejemplo: para rotar el grafico 90 grados\n\n")
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
  cat(" CONCEPTOS CLAVE Y FACTORES\n")
  cat("----------------------------------------------------------------------\n")
  cat("* AES vs PARAMETROS: \n")
  cat("  - DENTRO de aes(): Si el color/forma/tamaño DEPENDE de los datos (una columna).\n")
  cat("  - FUERA de aes(): Si quieres que TODO el grafico tenga un valor fijo (ej. color = 'blue').\n\n")
  cat("* ORDENAMIENTO DE FACTORES (Paquete forcats):\n")
  cat("  - fct_infreq(col_categorica): Ordena factores por su conteo/frecuencia (Ideal para barras).\n")
  cat("  - fct_reorder(col_categorica, col_numerica): Ordena una categoria basado en el valor de otra columna.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GALERIA DE GEOMETRIAS (GEOMS) LISTAS PARA USAR\n")
  cat("----------------------------------------------------------------------\n")
  cat("1. DISPERSION (Puntos)\n")
  cat("   geom_point(aes(shape = <CAT>, size = <NUM>), alpha = 0.7, color = 'blue')\n\n")

  cat("2. LINEAS (Tendencias temporales)\n")
  cat("   geom_line(aes(group = <CAT>, linetype = <CAT>), linewidth = 1)\n\n")

  cat("3. BARRAS (Conteo automatico de filas)\n")
  cat("   geom_bar(aes(fill = <CAT>), position = 'dodge')\n\n")

  cat("4. COLUMNAS (Cuando ya tienes el valor pre-calculado en el eje Y)\n")
  cat("   geom_col(aes(x = fct_reorder(<CAT>, <NUM>), y = <NUM>))\n\n")

  cat("5. BOXPLOTS (Distribuciones)\n")
  cat("   geom_boxplot(outlier.colour = 'red', notch = FALSE)\n\n")

  cat("6. TEXTO (Etiquetar puntos)\n")
  cat("   geom_text(aes(label = <VAR_TEXTO>), vjust = -0.5, hjust = 0.5)\n\n")
  cat("======================================================================\n")
}

#' @export
loops_recap <- function() {
  cat("\n======================================================================\n")
  cat("                 ITERACIONES Y BUCLES (FOR-LOOPS)\n")
  cat("======================================================================\n\n")
  
  cat("Los loops son utiles cuando el valor que vas a estimar depende directamente del valor calculado en la iteracion anterior (procesos acumulativos).\n\n")
  
  cat("PASO 1. PREPARACION (Inicializar espacio de memoria):\n")
  cat("---------------------------\n")
  cat("   * s_n <- numeric(100) # Crea vector numerico de 100 ceros\n")
  cat("   * s_v <- vector()     # Crea un vector logico vacio (menos eficiente)\n\n")

  cat("PASO 2. DEFINIR LA SECUENCIA (Rango):\n")
  cat("---------------------------\n")
  cat("   * seq(1, 100) o 1:100\n")
  cat("   * seq() permite definir pasos: seq(from = 0, to = 10, by = 2)\n\n")

  cat("PASO 3. EL BUCLE:\n")
  cat("---------------------------\n")
  cat("for (i in 1:100) {\n")
  cat("  resultados[i] <- i + (i - 1)\n")
  cat("}\n\n")
  
  cat("PASO 4. CON CONDICIONES INTERNAS (If / Break):\n")
  cat("---------------------------\n")
  cat("Dentro del loop puedes detenerlo prematuramente si se alcanza un umbral.\n")
  cat("for (i in 1:100) {\n")
  cat("  if (resultados[i-1] < 25) { break }\n")
  cat("}\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" UTILIDADES PARA DENTRO DEL LOOP\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("1. cat() y paste()\n")
  cat("   * Plantilla: cat('Iteracion', i, 'valor:', val, '\\n')\n")
  cat("   * Descripcion: 'cat' imprime directo en la consola (ideal para ver el progreso del loop). 'paste' crea y guarda un string.\n\n")

  cat("2. runif()\n")
  cat("   * Plantilla: runif(1, min=1, max=10)\n")
  cat("   * Descripcion: Obtiene numeros aleatorios de una distribucion uniforme (muy usado en loops para simulaciones estocasticas).\n")
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
  cat("        ESTRUCTURA, FUNCIONES DE STRINGR Y SINTAXIS REGEX\n")
  cat("======================================================================\n\n")
  
  cat("----------------------------------------------------------------------\n")
  cat(" PARTE 1: FUNCIONES PRINCIPALES DEL PAQUETE STRINGR\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("1. str_length()\n")
  cat("   * Plantilla: str_length(string)\n")
  cat("   * Descripcion: Cuenta el numero de caracteres de cada elemento en un vector.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres a evaluar.\n\n")
  
  cat("2. str_detect()\n")
  cat("   * Plantilla: str_detect(string, pattern, negate = FALSE)\n")
  cat("   * Descripcion: Evalua si el patron regex se encuentra en el texto. Devuelve un vector logico (TRUE/FALSE).\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres sobre el cual buscar.\n")
  cat("       - pattern (Requerido) -> El patron o expresion regular buscada.\n")
  cat("       - negate (Opcional) -> Si se cambia a TRUE, invierte el resultado (devuelve TRUE donde NO hay match).\n\n")
  
  cat("3. str_count()\n")
  cat("   * Plantilla: str_count(string, pattern)\n")
  cat("   * Descripcion: Cuenta cuantas veces aparece el patron especificado dentro de cada string.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres.\n")
  cat("       - pattern (Requerido) -> El patron regex a contar.\n\n")
  
  cat("4. str_extract() y str_extract_all()\n")
  cat("   * Plantilla: str_extract(string, pattern)  |  str_extract_all(string, pattern)\n")
  cat("   * Descripcion: Extrae el fragmento de texto exacto que coincide con la regex.\n")
  cat("                  'str_extract' devuelve un vector con la primera coincidencia encontrada.\n")
  cat("                  'str_extract_all' busca todas las coincidencias y devuelve una lista.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres.\n")
  cat("       - pattern (Requerido) -> El patron regex a extraer.\n\n")
  
  cat("5. str_replace() y str_replace_all()\n")
  cat("   * Plantilla: str_replace(string, pattern, replacement)\n")
  cat("   * Descripcion: Reemplaza texto que coincide con el patron por una nueva cadena.\n")
  cat("                  'str_replace' solo cambia la primera ocurrencia encontrada.\n")
  cat("                  'str_replace_all' cambia absolutamente todas las ocurrencias del vector.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres original.\n")
  cat("       - pattern (Requerido) -> El patron regex a buscar para sustituir.\n")
  cat("       - replacement (Requerido) -> El nuevo texto que tomara el lugar del patron.\n\n")
  
  cat("6. str_sub()\n")
  cat("   * Plantilla: str_sub(string, start = 1L, end = -1L)\n")
  cat("   * Descripcion: Extrae o reemplaza componentes de un string basandose en posiciones de indices fijos.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres.\n")
  cat("       - start (Opcional) -> Posicion inicial del corte (por defecto es 1).\n")
  cat("       - end (Opcional) -> Posicion final del corte. Numeros negativos cuentan desde atras hacia adelante (ej. -1 es el ultimo caracter).\n\n")
  
  cat("7. str_view()\n")
  cat("   * Plantilla: str_view(string, pattern, match = TRUE)\n")
  cat("   * Descripcion: Herramienta de depuracion en consola. Muestra graficamente donde cae el match exacto.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres.\n")
  cat("       - pattern (Requerido) -> El patron a testear.\n")
  cat("       - match (Opcional) -> Si es TRUE filtra y solo muestra las lineas que coinciden. FALSE muestra las que no. NA muestra todo.\n\n")

  cat("8. str_match() y str_match_all()\n")
  cat("   * Plantilla: str_match(string, pattern)\n")
  cat("   * Descripcion: Extrae los matches de los grupos de captura definidos por parentesis '()'.\n")
  cat("                  Devuelve una MATRIZ de caracteres: la columna 1 es el match completo,\n")
  cat("                  la columna 2 es el primer grupo '()', la columna 3 el segundo, etc.\n")
  cat("                  Es la alternativa perfecta cuando un Look-Behind falla por longitudes infinitas.\n")
  cat("   * Inputs:\n")
  cat("       - string (Requerido) -> Vector de caracteres.\n")
  cat("       - pattern (Requerido) -> El patron con los grupos de captura entre parentesis obligatorios.\n")
  cat("   * Ejemplo Fasta (Extraer despues del 3er espacio hasta la coma):\n")
  cat("       - Codigo: m <- str_match(fasta, '^([^ ]+ ){3}([^,]+)')\n")
  cat("       - Resultado: m[, 2] contendra el texto capturado por el segundo parentesis.\n\n")

  
  cat("----------------------------------------------------------------------\n")
  cat(" PARTE 2: SINTAXIS COMPLETA DE EXPRESIONES REGULARES (REGEX)\n")
  cat("----------------------------------------------------------------------\n\n")
  
  cat("A) CHARACTER CLASSES AND GROUPS (Clases de caracteres y Grupos)\n")
  cat("------------------------------------------------------------\n")
  cat("  * .       -> Comodín. Coincide con cualquier caracter individual excepto saltos de linea (\\n).\n")
  cat("  * |       -> Operador logico OR (Alternancia). Ej: '(a|b)' hara match con la letra 'a' o con la letra 'b'.\n")
  cat("  * [...]   -> Lista de caracteres permitidos. Ej: '[abc]' permite solo un caracter que sea 'a', 'b' o 'c'.\n")
  cat("  * [a-z]   -> Especifica rangos. '[a-z]' minusculas, '[A-Z]' mayusculas, '[0-9]' digitos basicos.\n")
  cat("  * [^...]  -> Lista de exclusión. Invierte la seleccion dentro de los corchetes. Ej: '[^ATGC]' busca lo que NO sea un nucleotido.\n")
  cat("  * (...)   -> Grupo de captura. Aisla bloques del patron y habilita retro-referencias en memoria usando '\\\\N' (ej. '\\\\1').\n\n")
  
  cat("B) ANCHORS (Anclajes de posicion)\n")
  cat("----------------------------------\n")
  cat("  * ^       -> Obliga a que el patron empiece estrictamente al INICIO del string evaluado.\n")
  cat("  * $       -> Obliga a que el patron termine estrictamente al FINAL del string evaluado.\n")
  cat("  * \\\\b     -> Delimita un borde o limite invisible de palabra completa (separacion entre caracteres alfanumericos y espacios/signos).\n")
  cat("  * \\\\B     -> Lo opuesto a \\\\b. Valida posiciones que NO representan el borde de una palabra.\n")
  cat("  * \\\\<     -> Fuerza a que el match ocurra estrictamente al COMIENZO de una palabra.\n")
  cat("  * \\\\>     -> Fuerza a que el match ocurra estrictamente al FINAL de una palabra.\n\n")
  
  cat("C) QUANTIFIERS (Cuantificadores de repeticion)\n")
  cat("----------------------------------------------\n")
  cat("  * * -> El caracter o grupo anterior puede aparecer 0 o mas veces (es opcional e ilimitado).\n")
  cat("  * +       -> El caracter o grupo anterior debe aparecer obligatoriamente 1 o mas veces.\n")
  cat("  * ?       -> El caracter o grupo anterior es opcional; puede aparecer un maximo de 1 vez (0 o 1 repeticion).\n")
  cat("  * {n}     -> Indica que el patron anterior debe repetirse EXACTAMENTE n veces.\n")
  cat("  * {n,}    -> Indica que el patron anterior debe repetirse AL MENOS n veces o mas.\n")
  cat("  * {,n}    -> Indica que el patron anterior debe repetirse COMO MAXIMO n veces.\n")
  cat("  * {n,m}   -> Indica un rango cerrado. El patron anterior debe aparecer ENTRE n y m veces (ambos inclusivos).\n\n")

  cat("D) LOOKAROUNDS (Contexto de busqueda posicional / Localizadores)\n")
  cat("--------------------------------------------------------------\n")
  cat("Sirven para extraer patrones basados en lo que tienen antes o despues, SIN incluir el contexto en el resultado.\n")
  cat("NOTA CRITICA: En R, el motor ICU requiere que los Look-Behind tengan longitudes MAXIMAS acotadas (evita usar '+' o '*' adentro).\n\n")
  
  cat("  1. Positive Lookbehind '(?<=paquete)' -> Busca un patrón que tenga a la IZQUIERDA el texto especificado.\n")
  cat("     * Sintaxis en R: '(?<=ID_)\\\\w+' -> Busca caracteres de palabra que esten inmediatamente despues de 'ID_'.\n")
  cat("     * Caso Fasta (>): Para extraer la primera palabra despues de '>', usa: '(?<=>)\\\\w+'\n")
  cat("     * Caso Fasta acotado: '(?<=^([^ ]{1,30} ){3})[^,]+' -> Evita el error de longitud indefinida usando limites fijos como {1,30}.\n\n")
  
  cat("  2. Negative Lookbehind '(?<!paquete)' -> Busca un patrón que NO tenga a la IZQUIERDA el texto especificado.\n")
  cat("     * Sintaxis en R: '(?<!-)\\\\d+' -> Busca digitos que NO tengan un signo menos atras (solo numeros positivos).\n\n")
  
  cat("  3. Positive Lookahead '(?=paquete)' -> Busca un patrón que tenga a la DERECHA el texto especificado.\n")
  cat("     * Sintaxis en R: '\\\\w+(?=\\\\.)' -> Busca una palabra que este inmediatamente antes de un punto final.\n\n")
  
  cat("  4. Negative Lookahead '(?!paquete)' -> Busca un patrón que NO tenga a la DERECHA el texto especificado.\n")
  cat("     * Sintaxis en R: '\\\\d+(?!\\\\s)' -> Busca numeros que NO esten seguidos de un espacio.\n\n")
  
  cat("  5. Combinacion (Buscar ENTRE dos simbolos o delimitadores):\n")
  cat("     * Plantilla general: '(?<=SIMBOLO_IZQ).*(?=SIMBOLO_DER)'\n")
  cat("     * Ejemplo Basico (Entre corchetes [Texto]): '(?<=\\\\[)[^\\\\]]+(?=\\\\])'\n\n")
  cat("     * ALERTA DE ERROR COMUN (El peligro del comportamiento Greedy '.*'):\n")
  cat("       Si buscas entre un delimitador y un espacio usando '(?<=Pais:\\\\s).*(?=\\\\s)',\n")
  cat("       el '.*' es codicioso. No se detendra en el primer espacio, sino que devorara\n")
  cat("       todo el string hasta el ULTIMO espacio de la linea (ej. 'Chile | Tipo:').\n\n")
  cat("     * SOLUCIONES CORRECTAS (Romper la codicia):\n")
  cat("       A) Usar caracteres de palabra continuos (\\\\w+) si el valor es de una palabra:\n")
  cat("          '(?<=Pais:\\\\s)\\\\w+' -> Se detiene inmediatamente al encontrar el primer espacio.\n")
  cat("       B) Usar clase de caracteres negada ([^ ]+) si incluye puntos o simbolos (ej. EE.UU):\n")
  cat("          '(?<=Pais:\\\\s)[^ ]+' -> Extrae todo lo que NO sea un espacio, frenando en seco.\n")
  cat("       C) Machear hasta el siguiente delimitador logico de la base (ej. barra vertical '|'):\n")
  cat("          '(?<=Pais:\\\\s)[^|]+' -> Extrae todo hasta toparse con la barra '|'.\n\n")
  
  cat("======================================================================\n")
}

#' @export
dataframe_creation_recap <- function() {
  cat("\n======================================================================\n")
  cat("             ¿COMO CREAR UN DATAFRAME PASO A PASO?\n")
  cat("======================================================================\n\n")
  
  cat("1. METODO DIRECTO: A PARTIR DE VECTORES EXISTENTES\n")
  cat("--------------------------------------------------\n")
  cat("Si ya tienes los vectores listos con la informacion organizada, simplemente los\n")
  cat("unes asegurando que tengan exactamente la misma longitud.\n\n")
  
  cat("Plantilla R Base:\n")
  cat("df <- data.frame(\n")
  cat("  nombre_col1 = vector_1,\n")
  cat("  nombre_col2 = vector_2\n")
  cat(")\n\n")
  
  cat("Plantilla Tidyverse (Genera un tibble, mas limpio visualmente):\n")
  cat("library(tibble)\n")
  cat("df <- tibble(\n")
  cat("  nombre_col1 = vector_1,\n")
  cat("  nombre_col2 = vector_2\n")
  cat(")\n\n")
  
  cat("2. METODO DINAMICO: VECTOR INICIAL + DERIVACION (Caso Clasificacion de Errores)\n")
  cat("--------------------------------------------------\n")
  cat("Cuando tienes un vector base 'sucio' o crudo y necesitas construir las demas\n")
  cat("columnas aplicando logica condicional (como expresiones regulares).\n\n")
  
  cat("Paso A: Crear el dataframe inicial usando tu vector como primera columna.\n")
  cat("df_inicial <- data.frame(secuencia = coi_sucias, stringsAsFactors = FALSE)\n\n")
  
  cat("Paso B: Usar mutate() junto con case_when() para evaluar la columna y crear la nueva.\n")
  cat("library(dplyr)\n")
  cat("library(stringr)\n\n")
  cat("df_final <- df_inicial %>%\n")
  cat("  mutate(\n")
  cat("    problema = case_when(\n")
  cat("      str_detect(secuencia, '-')      ~ 'guión',\n")
  cat("      str_detect(secuencia, '\\\\\\\\s')     ~ 'espacio',\n")
  cat("      str_detect(secuencia, '\\\\\\\\d')     ~ 'dígito',\n")
  cat("      str_detect(secuencia, '[Nn]')   ~ 'base ambigua',\n")
  cat("      TRUE                            ~ 'sin problema' # Respaldo por si esta limpia\n")
  cat("    )\n")
  cat("  )\n\n")
  
  cat("3. REGLAS DE ORO AL CONSTRUIR DATAFRAMES\n")
  cat("--------------------------------------------------\n")
  cat("  * Longitud identica: Todos los vectores columnas DEBEN medir lo mismo (ej. si uno tiene 5 elementos, todos deben tener 5).\n")
  cat("  * Reciclaje de valores: Si pasas un unico valor fijo (ej. numero o string), R lo repetira automaticamente en todas las filas.\n")
  cat("  * Nombres de columnas validos: Evita usar espacios o caracteres especiales en los nombres (prefiere 'mi_columna' a 'mi columna').\n")
  cat("======================================================================\n")
}
