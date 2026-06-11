#' @export
function_registry <- function() {
  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 1: OBJETOS, VECTORES Y TIPOS DE DATOS (R BASE)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("1. Asignacion de objetos (<-)\n")
  cat("   * Plantilla: nombre_objeto <- valor\n")
  cat("   * Descripcion: Asigna un valor a un objeto en el ambiente.\n")
  cat("   * Inputs: Cualquier valor (numero, texto, vector, df).\n\n")

  cat("2. Crear vectores con c()\n")
  cat("   * Plantilla: v <- c(valor1, valor2, valor3)\n")
  cat("   * Descripcion: Combina valores en un vector. Si usas \"\" es character.\n")
  cat("   * Inputs: Valores separados por coma.\n\n")

  cat("3. Asignar nombres a elementos de un vector\n")
  cat("   * Plantilla A: v <- c(nombre1 = valor1, nombre2 = valor2)\n")
  cat("   * Plantilla B: names(v) <- c('nombre1', 'nombre2')\n")
  cat("   * Descripcion: Asigna identificadores a cada elemento.\n\n")

  cat("4. Secuencias con seq() y :\n")
  cat("   * Plantilla: seq(from = 1, to = 10, by = 2)  # 1,3,5,7,9\n")
  cat("   * Plantilla rapida: 1:10  # 1,2,3,...,10\n")
  cat("   * Descripcion: Genera secuencias numericas.\n\n")

  cat("5. Longitud y tipo de vector\n")
  cat("   * Plantilla: length(v)  # cuantos elementos tiene\n")
  cat("   * Plantilla: class(v)   # que tipo de objeto es\n")
  cat("   * Plantilla: is.vector(v), is.numeric(v), is.character(v), is.factor(v)\n")
  cat("   * Descripcion: Familia 'is.' para preguntar tipo, 'length' para tamano.\n\n")

  cat("6. Coercion entre tipos (familia as.)\n")
  cat("   * Plantilla: as.numeric(v), as.character(v), as.factor(v)\n")
  cat("   * Plantilla: as.data.frame(v), as.matrix(v), as.vector(v)\n")
  cat("   * Descripcion: Cambia forzadamente el tipo de un objeto.\n\n")

  cat("7. ls() y rm() - Ambiente\n")
  cat("   * Plantilla: ls()  # lista objetos en el ambiente\n")
  cat("   * Plantilla: rm(objeto1, objeto2)  # elimina objetos\n\n")

  cat("8. Matrices\n")
  cat("   * Plantilla: m <- matrix(datos, nrow = 2, ncol = 3)\n")
  cat("   * Plantilla vacia: m <- matrix(, nrow = 2, ncol = 3)\n")
  cat("   * Acceso: m[fila, columna]  # m[1,] primera fila, m[,2] segunda columna\n")
  cat("   * Descripcion: Todos los elementos deben ser del MISMO tipo.\n\n")

  cat("9. Factores\n")
  cat("   * Plantilla: f <- factor(v, levels = c('bajo', 'medio', 'alto'))\n")
  cat("   * Plantilla: levels(f)  # ver niveles unicos\n")
  cat("   * Plantilla: table(f)   # contar frecuencia de cada nivel\n")
  cat("   * Plantilla: droplevels(f)  # elimina niveles no usados\n")
  cat("   * Descripcion: Variables categoricas con niveles definidos.\n\n")

  cat("10. Operadores relacionales y logicos\n")
  cat("    * == (igual), != (diferente), >, <, >=, <=\n")
  cat("    * & (Y logico), | (O logico), ! (negacion)\n")
  cat("    * %in%  # pertenencia a un conjunto\n")
  cat("    * Orden de prioridad: ^ > */ > +- > <>==!= > ! > & > | > <-\n\n")

  cat("11. Regla del reciclaje\n")
  cat("    * Descripcion: Si operas vectores de distinta longitud,\n")
  cat("      R recicla (repite) el mas corto hasta igualar.\n\n")

  cat("12. Funciones estadisticas basicas\n")
  cat("    * Plantilla: mean(v, na.rm = TRUE), median(), sd(), min(), max(), sum()\n")
  cat("    * Plantilla: summary(df)  # resumen de todas las columnas\n")
  cat("    * Plantilla: unique(v)    # valores unicos\n")
  cat("    * Plantilla: n_distinct(v) # cantidad de valores unicos (dplyr)\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 2: IMPORTAR Y EXPORTAR DATOS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("13. read.csv() (R Base)\n")
  cat("    * Plantilla: df <- read.csv('archivo.csv', header = TRUE)\n")
  cat("    * Inputs: 'file' (Ruta del archivo), 'header' (T/F primera fila son nombres).\n\n")

  cat("14. read_csv() (readr - tidyverse)\n")
  cat("    * Plantilla: df <- read_csv('archivo.csv', col_types = cols(col1 = col_number()))\n")
  cat("    * Inputs: 'col_types' para especificar tipos de columnas.\n\n")

  cat("15. read.delim() / read_delim() - Archivos .txt .tsv\n")
  cat("    * Plantilla: df <- read_delim('archivo.tsv', delim = '\\t', trim_ws = TRUE)\n")
  cat("    * Inputs: 'delim' (separador), 'trim_ws' (elimina espacios extra).\n\n")

  cat("16. read_xlsx() / read_excel() - Archivos Excel\n")
  cat("    * Plantilla: df <- read_xlsx('archivo.xlsx', col_names = TRUE, skip = 1)\n")
  cat("    * Inputs: 'skip' (filas a saltar), 'col_types' (como c('text', 'numeric')).\n\n")

  cat("17. read.csv2() - Archivos CSV con separador ';' y decimal ','\n")
  cat("    * Plantilla: df <- read.csv2('archivo.csv')\n\n")

  cat("18. write.csv() - Exportar\n")
  cat("    * Plantilla: write.csv(x = df, file = 'nombre_archivo.csv')\n")
  cat("    * Descripcion: Guarda un df como archivo CSV en el directorio de trabajo.\n\n")

  cat("19. setwd() / getwd()\n")
  cat("    * Plantilla: setwd('C:/ruta/de/trabajo')  # RECUERDA: usar / no \\\n")
  cat("    * Plantilla: getwd()  # muestra directorio actual\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 3: ESTRUCTURA Y EXPLORACION DE DATAFRAMES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("20. str(), glimpse(), head(), tail()\n")
  cat("    * str(df)  # estructura interna completa\n")
  cat("    * glimpse(df)  # resumen mas legible (tidyverse)\n")
  cat("    * head(df) / tail(df)  # primeras/ultimas 6 filas\n\n")

  cat("21. names(), colnames(), nrow(), ncol(), dim()\n")
  cat("    * names(df) / colnames(df)  # nombres de columnas\n")
  cat("    * nrow(df) / ncol(df) / dim(df)  # filas, columnas, dimensiones\n\n")

  cat("22. Acceso a columnas con $ y [[]]\n")
  cat("    * Plantilla: df$nombre_columna  # acceso directo como vector\n")
  cat("    * Plantilla: df[['nombre_columna']]  # acceso por nombre (funciona en loops)\n\n")

  cat("23. Corchetes [] para subconjuntos\n")
  cat("    * Plantilla: df[filas, columnas]\n")
  cat("    * df[1:5, ]  # filas 1 a 5, todas las columnas\n")
  cat("    * df[, 1:3]  # todas las filas, columnas 1 a 3\n")
  cat("    * df[2, 3]   # valor especifico: fila 2, columna 3\n\n")

  cat("24. Convertir columnas character a factores MASIVAMENTE\n")
  cat("    * Plantilla:\n")
  cat("      df <- as.data.frame(lapply(df, function(x)\n")
  cat("        if (is.character(x)) as.factor(x) else x))\n")
  cat("    * Tidyverse: df <- df %>% mutate(across(where(is.character), as.factor))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 4: DPLYR - SELECCIONAR Y RENOMBRAR COLUMNAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("25. select() - Seleccionar/Eliminar columnas\n")
  cat("    * Plantilla: df_nuevo <- df %>% select(col1, col2, -col3)\n")
  cat("    * Plantilla: df_nuevo <- df %>% select(-starts_with('X'))\n")
  cat("    * Inputs: Nombres de columnas con '-' para excluir.\n\n")

  cat("26. Helpers de select() para busqueda inteligente\n")
  cat("    * starts_with('prefijo')  # columnas que empiezan con X\n")
  cat("    * ends_with('sufijo')     # columnas que terminan con X\n")
  cat("    * contains('texto')       # columnas que contienen X\n")
  cat("    * matches('regex')        # columnas que cumplen expresion regular\n")
  cat("    * where(is.numeric)       # columnas numericas\n")
  cat("    * everything()            # todas las columnas\n")
  cat("    * all_of(vector) / any_of(vector)  # columnas en un vector de nombres\n\n")

  cat("27. rename() - Cambiar nombre de columnas\n")
  cat("    * Plantilla: df <- df %>% rename(nombre_nuevo = nombre_viejo)\n")
  cat("    * Plantilla multiple: df %>% rename(col_a = old_a, col_b = old_b)\n\n")

  cat("28. relocate() - Reordenar columnas\n")
  cat("    * Plantilla: df %>% relocate(columna, .before = otra_col)\n")
  cat("    * Plantilla: df %>% relocate(columna, .after = last_col())\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 5: DPLYR - FILTRAR Y ORDENAR FILAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("29. filter() - Filtrar filas por condiciones\n")
  cat("    * Plantilla: df %>% filter(columna == 'Valor' & num > 10)\n")
  cat("    * Multiples condiciones (Y): filter(cond1, cond2) o filter(cond1 & cond2)\n")
  cat("    * Condiciones O: filter(cond1 | cond2)\n")
  cat("    * Varios valores: filter(col %in% c('A', 'B', 'C'))\n")
  cat("    * Negar: filter(!is.na(col))  # solo filas SIN NA\n")
  cat("    * Descripcion: Conserva filas donde TODAS las condiciones son TRUE.\n\n")

  cat("30. subset() - Alternativa R Base a filter + select\n")
  cat("    * Plantilla:\n")
  cat("      df_sub <- subset(df,\n")
  cat("        subset = especie == 'setosa' & num > 10,\n")
  cat("        select = c(col1, col2))\n\n")

  cat("31. slice() - Seleccionar filas por posicion\n")
  cat("    * Plantilla: df %>% slice(1:5)  # filas 1 a 5\n")
  cat("    * Plantilla: df %>% slice_min(col_num, n = 3)  # 3 filas con menor valor\n")
  cat("    * Plantilla: df %>% slice_max(col_num, n = 5)  # 5 filas con mayor valor\n\n")

  cat("32. arrange() - Ordenar filas\n")
  cat("    * Plantilla: df %>% arrange(col1)  # ascendente\n")
  cat("    * Plantilla: df %>% arrange(desc(col1))  # descendente\n")
  cat("    * Plantilla: df %>% arrange(col1, desc(col2))  # jerarquico\n\n")

  cat("33. count() - Contar frecuencias\n")
  cat("    * Plantilla: df %>% count(columna_categorica)\n")
  cat("    * Plantilla: df %>% count(col1, col2)  # combinaciones\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 6: DPLYR - CREAR Y MODIFICAR COLUMNAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("34. mutate() - Crear/modificar columnas\n")
  cat("    * Plantilla: df <- df %>% mutate(nueva_col = col1 + col2)\n")
  cat("    * Operacion matematica: mutate(proporcion = col1 / col2)\n")
  cat("    * Combinar texto: mutate(nueva = paste(col1, col2, sep = '_'))\n")
  cat("    * Porcentaje: mutate(precio_venta = price * 1.15)\n")
  cat("    * Diferencia con promedio: mutate(dif = col - mean(col, na.rm = TRUE))\n")
  cat("    * Valor fijo: mutate(maximo = max(col, na.rm = TRUE))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 7: DPLYR - AGRUPAR Y RESUMIR\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("35. group_by() + summarise() - Resumen por grupos\n")
  cat("    * Plantilla:\n")
  cat("      df %>%\n")
  cat("        group_by(categoria) %>%\n")
  cat("        summarise(promedio = mean(num, na.rm = TRUE),\n")
  cat("                  n = n(),\n")
  cat("                  .groups = 'drop')\n\n")

  cat("36. summarise() con across() y list() - Varias columnas a la vez\n")
  cat("    * Plantilla:\n")
  cat("      df %>%\n")
  cat("        group_by(cat) %>%\n")
  cat("        summarise(across(\n")
  cat("          c(col1, col2),\n")
  cat("          list(\n")
  cat("            promedio = ~mean(.x, na.rm = TRUE),\n")
  cat("            minimo = ~min(.x, na.rm = TRUE),\n")
  cat("            maximo = ~max(.x, na.rm = TRUE)\n")
  cat("          )\n")
  cat("        ))\n\n")

  cat("37. summarise() con across() y where() - Todas las numericas\n")
  cat("    * Plantilla:\n")
  cat("      df %>%\n")
  cat("        group_by(cat) %>%\n")
  cat("        summarise(across(\n")
  cat("          where(is.numeric),\n")
  cat("          list(mean = ~mean(.x, na.rm = TRUE), min = ~min(.x, na.rm = TRUE))\n")
  cat("        ))\n\n")

  cat("38. Funciones utiles DENTRO de summarise():\n")
  cat("    * n()  # cuenta filas del grupo\n")
  cat("    * n_distinct(col)  # valores unicos en columna\n")
  cat("    * first(col), last(col), nth(col, n)  # enesimo valor\n\n")

  cat("39. pull() - Extraer columna como vector\n")
  cat("    * Plantilla: valor <- df %>% filter(cond) %>% pull(columna)\n")
  cat("    * Descripcion: Extrae UNA columna como vector (no tibble).\n\n")

  cat("40. across() DENTRO de mutate()\n")
  cat("    * Plantilla: df %>% mutate(across(where(is.character), as.factor))\n")
  cat("    * Descripcion: Aplica una funcion a multiples columnas SIN resumir.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 8: OPERACIONES POR FILA\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("41. rowSums() - Sumar por fila (R Base)\n")
  cat("    * Plantilla:\n")
  cat("      df %>% mutate(total = rowSums(select(., starts_with('spp')), na.rm = TRUE))\n\n")

  cat("42. rowwise() + c_across() - CUALQUIER operacion por fila\n")
  cat("    * Plantilla:\n")
  cat("      df %>%\n")
  cat("        rowwise() %>%\n")
  cat("        mutate(\n")
  cat("          total = sum(c_across(starts_with('spp')), na.rm = TRUE),\n")
  cat("          media = mean(c_across(where(is.numeric)), na.rm = TRUE)\n")
  cat("        ) %>%\n")
  cat("        ungroup()\n")
  cat("    * Descripcion: rowWise + c_across permite mean, max, min, etc. por fila.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 9: JOINS Y COMBINACION DE BASES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("43. left_join() - Unir tablas (mantiene filas de la izquierda)\n")
  cat("    * Plantilla: df_final <- left_join(df_izq, df_der, by = 'columna_llave')\n")
  cat("    * Multiples llaves: left_join(df1, df2, by = c('id', 'anio'))\n\n")

  cat("44. full_join() - Unir (conserva TODAS las filas de ambas)\n")
  cat("    * Plantilla: df <- full_join(df1, df2, by = 'columna')\n\n")

  cat("45. inner_join() - Unir (solo filas que coinciden en ambas)\n")
  cat("    * Plantilla: df <- inner_join(df1, df2, by = 'columna')\n\n")

  cat("46. right_join() - Unir (mantiene filas de la derecha)\n")
  cat("    * Plantilla: df <- right_join(df1, df2, by = 'columna')\n\n")

  cat("47. anti_join() - Filas SIN coincidencia\n")
  cat("    * Plantilla: df <- anti_join(df1, df2, by = 'columna')\n")
  cat("    * Descripcion: Devuelve filas de df1 que NO tienen match en df2.\n\n")

  cat("48. merge() - Alternativa R Base a joins\n")
  cat("    * Plantilla: df <- merge(df1, df2, by = 'species', all = TRUE)\n")
  cat("    * 'all = TRUE' es full join, 'all.x = TRUE' es left join.\n\n")

  cat("49. rbind() / bind_rows() - Unir por filas\n")
  cat("    * Plantilla: df <- rbind(df1, df2)  # R Base\n")
  cat("    * Plantilla: df <- bind_rows(df1, df2)  # dplyr\n\n")

  cat("50. union() - Unir filas eliminando duplicados\n")
  cat("    * Plantilla: df <- union(df1, df2)\n\n")

  cat("51. coalesce() - Tomar primer valor NO-NA entre columnas\n")
  cat("    * Plantilla: df %>% mutate(col = coalesce(col.x, col.y))\n")
  cat("    * Descripcion: Si col.x tiene NA, toma col.y. Util despues de joins.\n\n")

  cat("52. setequal() / identical() - Comparar objetos\n")
  cat("    * setequal(df1, df2)  # mismas filas (sin importar orden)\n")
  cat("    * identical(df1, df2)  # exactamente iguales\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 10: TRANSFORMACION DE DATOS (PIVOT)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("53. pivot_longer() - De ancho a largo\n")
  cat("    * Plantilla:\n")
  cat("      df_largo <- df_ancho %>%\n")
  cat("        pivot_longer(\n")
  cat("          cols = c('2020', '2021', '2022'),\n")
  cat("          names_to = 'Anio',\n")
  cat("          values_to = 'Conteo'\n")
  cat("        )\n")
  cat("    * Con helpers: pivot_longer(cols = starts_with('startle'))\n")
  cat("    * names_prefix: 'startleResponse'  # quita prefijo de los nombres\n\n")

  cat("54. pivot_wider() - De largo a ancho\n")
  cat("    * Plantilla:\n")
  cat("      df_ancho <- df_largo %>%\n")
  cat("        pivot_wider(\n")
  cat("          names_from = Anio,\n")
  cat("          values_from = Conteo,\n")
  cat("          values_fill = 0\n")
  cat("        )\n")
  cat("    * Multiples values_from: pivot_wider(names_from = id, values_from = c(a, b))\n")
  cat("    * names_glue: 'anemone_{id}'  # personalizar nombres de columnas\n\n")

  cat("55. separate() - Dividir una columna en varias\n")
  cat("    * Plantilla:\n")
  cat("      df %>% separate(col, into = c('genero', 'especie'), sep = '_', remove = FALSE)\n")
  cat("    * Inputs: 'col' (a dividir), 'into' (nuevos nombres), 'sep' (separador).\n\n")

  cat("56. separate_wider_delim() / separate_wider_position() - Alternativa moderna\n")
  cat("    * separate_wider_delim(col, delim = ':', names = c('h', 'm', 's'))\n")
  cat("    * separate_wider_position(col, widths = c(4, 2, 2))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 11: VALORES FALTANTES (NAs)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("57. is.na() - Detectar NAs\n")
  cat("    * Plantilla: is.na(df$col)  # vector logico\n")
  cat("    * Plantilla: sum(is.na(df$col))  # cuantos NAs hay\n")
  cat("    * Plantilla: any(is.na(df))  # hay algun NA en todo el df?\n")
  cat("    * which(is.na(df$col))  # indices (posiciones) de los NAs\n\n")

  cat("58. drop_na() - Eliminar filas con NA\n")
  cat("    * Plantilla: df %>% drop_na()  # elimina filas con NA en cualquier columna\n")
  cat("    * Plantilla: df %>% drop_na(col1, col2)  # solo si NA en columnas especificas\n\n")

  cat("59. replace_na() - Reemplazar NAs\n")
  cat("    * Plantilla: df %>% mutate(col1 = replace_na(col1, 0))\n")
  cat("    * Plantilla: df %>% replace_na(list(col1 = 0, col2 = 'otro'))\n")
  cat("    * Con promedio: primero guarda mean_x <- mean(df$x, na.rm = TRUE), luego replace_na\n\n")

  cat("60. na.rm = TRUE - Ignorar NAs en funciones\n")
  cat("    * Plantilla: mean(v, na.rm = TRUE), sum(v, na.rm = TRUE)\n\n")

  cat("61. Reemplazo directo de celdas\n")
  cat("    * Plantilla: df[3, 1] <- 26  # fila 3, columna 1 = 26\n")
  cat("    * Con which: df$col[which(is.na(df$col))] <- valor\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 12: CONDICIONALES Y CONTROL DE FLUJO\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("62. if() {} else {} - Condicional escalar (R Base)\n")
  cat("    * Plantilla:\n")
  cat("      if (x > 0) {\n")
  cat("        print('Positivo')\n")
  cat("      } else if (x < 0) {\n")
  cat("        print('Negativo')\n")
  cat("      } else {\n")
  cat("        print('Cero')\n")
  cat("      }\n")
  cat("    * Descripcion: NO es vectorizado. Solo funciona con un valor.\n\n")

  cat("63. ifelse() - Condicional vectorizado (R Base)\n")
  cat("    * Plantilla: ifelse(vector > 0, 'positivo', 'negativo')\n")
  cat("    * Plantilla anidado: ifelse(v > 0, 'pos', ifelse(v < 0, 'neg', 'cero'))\n\n")

  cat("64. if_else() - Version estricta de dplyr\n")
  cat("    * Plantilla: df %>% mutate(cat = if_else(col > 10, 'Alto', 'Bajo'))\n")
  cat("    * Descripcion: Exige que TRUE y FALSE sean del mismo tipo.\n\n")

  cat("65. case_when() - Multiples condiciones (dplyr)\n")
  cat("    * Plantilla:\n")
  cat("      df %>% mutate(categoria = case_when(\n")
  cat("        col < 10  ~ 'Bajo',\n")
  cat("        col < 20  ~ 'Medio',\n")
  cat("        col >= 20 ~ 'Alto',\n")
  cat("        TRUE      ~ NA_character_  # else universal\n")
  cat("      ))\n")
  cat("    * Orden IMPORTANTE: Evalua de arriba a abajo, usa el primer TRUE.\n")
  cat("      Pon condiciones mas especificas ARRIBA.\n\n")

  cat("66. which.min() / which.max()\n")
  cat("    * Plantilla: which.min(df$col)  # posicion del valor minimo\n")
  cat("    * Plantilla: which.max(df$col)  # posicion del valor maximo\n\n")

  cat("67. quantile() - Percentiles\n")
  cat("    * Plantilla: quantile(df$col, 0.75, na.rm = TRUE)  # percentil 75\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 13: FUNCIONES PROPIAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("68. Sintaxis basica de funciones\n")
  cat("    * Plantilla:\n")
  cat("      nombre_funcion <- function(x, y) {\n")
  cat("        resultado <- (x + y) * 2\n")
  cat("        return(resultado)\n")
  cat("      }\n\n")

  cat("69. Funcion sin argumentos\n")
  cat("    * Plantilla:\n")
  cat("      mi_funcion <- function() {\n")
  cat("        runif(1, min = 1, max = 10)\n")
  cat("      }\n\n")

  cat("70. Funcion con salida de texto\n")
  cat("    * Plantilla:\n")
  cat("      mi_funcion <- function(a) {\n")
  cat("        diez <- a * 0.1\n")
  cat("        cat('El resultado es', diez)\n")
  cat("      }\n\n")

  cat("71. Funcion que acepta vectores\n")
  cat("    * Plantilla:\n")
  cat("      prom <- function(x) {\n")
  cat("        s <- sum(x)\n")
  cat("        n <- length(x)\n")
  cat("        s / n\n")
  cat("      }\n")
  cat("    * Descripcion: 'x' puede ser un numero o un vector entero.\n\n")

  cat("72. Funcion que devuelve info de columnas de un df\n")
  cat("    * Plantilla:\n")
  cat("      info_col <- function(df) {\n")
  cat("        data.frame(\n")
  cat("          columna = names(df),\n")
  cat("          clase = sapply(df, class)\n")
  cat("        )\n")
  cat("      }\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 14: LOOPS (FOR Y WHILE)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("73. for loop - Estructura basica\n")
  cat("    * Plantilla:\n")
  cat("      for (i in 1:10) {\n")
  cat("        print(i)\n")
  cat("      }\n\n")

  cat("74. for loop con vector pre-allocated\n")
  cat("    * Plantilla:\n")
  cat("      resultados <- numeric(m)  # o vector()\n")
  cat("      for (i in 1:m) {\n")
  cat("        resultados[i] <- i + (i - 1)\n")
  cat("      }\n\n")

  cat("75. for loop con cat() para progreso\n")
  cat("    * Plantilla:\n")
  cat("      for (i in seq(-5, 5)) {\n")
  cat("        cat(i, 'al cuadrado es', i^2, '\\n')\n")
  cat("      }\n\n")

  cat("76. for loop con condicion interna (break)\n")
  cat("    * Plantilla:\n")
  cat("      for (i in 1:100) {\n")
  cat("        if (resultados[i-1] < umbral) { break }\n")
  cat("      }\n\n")

  cat("77. for loop sobre nombres de un vector con nombres\n")
  cat("    * Plantilla:\n")
  cat("      for (m in names(vector_con_nombres)) {\n")
  cat("        valor_actual <- vector_con_nombres[m]\n")
  cat("        cat('Procesando', m, ':', valor_actual, '\\n')\n")
  cat("      }\n\n")

  cat("78. while loop - Mientras condicion se cumpla\n")
  cat("    * Plantilla:\n")
  cat("      contador <- 0\n")
  cat("      while (contador < 10) {\n")
  cat("        contador <- contador + 1\n")
  cat("        print(contador)\n")
  cat("      }\n\n")

  cat("79. mapply() - Aplicar funcion a multiples vectores\n")
  cat("    * Plantilla: mapply(mi_funcion, vector1, vector2)\n")
  cat("    * sapply(): sapply(vector, function(x) ...)  # simplifica resultado\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 15: STRINGS Y EXPRESIONES REGULARES (stringr)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("80. str_length() - Longitud de cada string\n")
  cat("    * Plantilla: str_length(vector_strings)\n\n")

  cat("81. str_detect() - Detectar patron (TRUE/FALSE)\n")
  cat("    * Plantilla: str_detect(string, pattern)\n")
  cat("    * Ignorar mayus/min: str_detect(string, regex(pattern, ignore_case = TRUE))\n\n")

  cat("82. str_count() - Contar cuantas veces aparece patron\n")
  cat("    * Plantilla: str_count(string, pattern)\n\n")

  cat("83. str_extract() / str_extract_all() - Extraer match\n")
  cat("    * Plantilla: str_extract(string, pattern)  # primer match\n")
  cat("    * Plantilla: str_extract_all(string, pattern)  # todos los matches\n\n")

  cat("84. str_replace() / str_replace_all() - Reemplazar texto\n")
  cat("    * Plantilla: str_replace(string, pattern, replacement)  # primero\n")
  cat("    * Plantilla: str_replace_all(string, pattern, replacement)  # todos\n\n")

  cat("85. str_sub() - Extraer por posicion\n")
  cat("    * Plantilla: str_sub(string, start = 1, end = 10)\n")
  cat("    * Numeros negativos: str_sub(string, start = -3)  # ultimos 3 chars\n\n")

  cat("86. str_view() - Visualizar matches en consola\n")
  cat("    * Plantilla: str_view(string, pattern)\n")
  cat("    * str_view(string, pattern, match = TRUE)  # solo los que matchean\n\n")

  cat("87. str_match() - Extraer grupos de captura\n")
  cat("    * Plantilla: m <- str_match(string, '^([A-Z]+)_?([0-9]+)')\n")
  cat("    * Resultado: m[,1] = match completo, m[,2] = grupo 1, m[,3] = grupo 2\n\n")

  cat("88. str_split() - Dividir string en lista\n")
  cat("    * Plantilla: str_split(string, '\\\\|')  # dividir por |\n\n")

  cat("89. str_trim() - Eliminar espacios al inicio/final\n")
  cat("    * Plantilla: str_trim(string)\n\n")

  cat("90. str_trunc() - Acortar texto\n")
  cat("    * Plantilla: str_trunc(string, width = 50)\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 16: REGEX - CLASES, ANCLAS, CUANTIFICADORES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("91. Clases de caracteres [ ]\n")
  cat("    * [abc]  # a, b o c (UN caracter entre los listados)\n")
  cat("    * [^abc] # lo que NO sea a, b o c\n")
  cat("    * [a-z]  # cualquier minuscula\n")
  cat("    * [A-Z]  # cualquier mayuscula\n")
  cat("    * [0-9]  # cualquier digito\n")
  cat("    * [ATGC] # solo bases de ADN\n")
  cat("    * Ejemplo: '[^ATGC]'  # caracteres NO validos en ADN\n\n")

  cat("92. Metacaracteres\n")
  cat("    * .   # cualquier caracter (excepto salto de linea)\n")
  cat("    * \\\\d # cualquier digito [0-9]\n")
  cat("    * \\\\D # cualquier NO digito\n")
  cat("    * \\\\s # espacio en blanco\n")
  cat("    * \\\\S # cualquier NO espacio\n")
  cat("    * \\\\w # caracter de palabra (letras, digitos, _)\n")
  cat("    * \\\\W # cualquier NO caracter de palabra\n")
  cat("    * NOTA: En R, escapar con DOBLE backslash: \\\\d, \\\\s, etc.\n\n")

  cat("93. Anclas de posicion\n")
  cat("    * ^   # INICIO del string\n")
  cat("    * $   # FINAL del string\n")
  cat("    * \\\\b # limite de palabra\n")
  cat("    * Ejemplo: '^ATG'  # empieza con ATG\n")
  cat("    * Ejemplo: 'TGA$'  # termina con TGA\n")
  cat("    * Ejemplo: '^[ATGC]+$'  # TODO el string son solo ATGC\n")
  cat("    * Ejemplo: '\\\\bmRNA\\\\b'  # 'mRNA' como palabra completa\n\n")

  cat("94. Cuantificadores\n")
  cat("    * ?    # 0 o 1 vez (opcional)\n")
  cat("    * +    # 1 o mas veces\n")
  cat("    * *    # 0 o mas veces\n")
  cat("    * {n}  # exactamente n veces\n")
  cat("    * {n,} # al menos n veces\n")
  cat("    * {n,m}# entre n y m veces\n")
  cat("    * Ejemplo: 'A{6,}'  # 6 o mas A's seguidas\n")
  cat("    * Ejemplo: '(CA){4,8}'  # entre 4 y 8 repeticiones de CA\n")
  cat("    * Ejemplo: '[ATGC]{3}'  # exactamente 3 bases (codon)\n\n")

  cat("95. Lookarounds\n")
  cat("    * (?<=X) Positive Lookbehind  # antes debe estar X\n")
  cat("    * (?<!X) Negative Lookbehind  # antes NO debe estar X\n")
  cat("    * (?=X)  Positive Lookahead   # despues debe estar X\n")
  cat("    * (?!X)  Negative Lookahead   # despues NO debe estar X\n")
  cat("    * Ejemplo: '(?<=\\\\.)\\\\d+$'  # digitos al final despues de un punto\n")
  cat("    * Ejemplo: '(?<=>)\\\\w+'  # primera palabra despues de >\n")
  cat("    * CUIDADO: Lookbehind requiere longitud FIJA (no usar + o * adentro)\n\n")

  cat("96. Grupos de captura ()\n")
  cat("    * (patron)  # agrupa y captura para retro-referencia con \\\\1\n")
  cat("    * Ejemplo: '^([A-Z]+)_?([0-9]+)'  # captura letras y numeros separados\n")
  cat("    * Ejemplo: '(CAG){3,}'  # 3 o mas repeticiones del grupo CAG\n\n")

  cat("97. Equivalencias R Base para stringr\n")
  cat("    * grepl(pattern, x)  == str_detect(x, pattern)\n")
  cat("    * grep(pattern, x, value = TRUE)  == devuelve los valores\n")
  cat("    * sub(pattern, replacement, x)  == str_replace(x, pattern, replacement)\n")
  cat("    * gsub(pattern, replacement, x) == str_replace_all(x, pattern, replacement)\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 17: GGPLOT2 - VISUALIZACION\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("98. Plantilla maestra de ggplot2\n")
  cat("    ggplot(data = df) +\n")
  cat("      aes(x = col_x, y = col_y, color = grupo, fill = grupo) +\n")
  cat("      geom_<TIPO>(mapping = aes(...)) +\n")
  cat("      labs(title = '', x = '', y = '', color = '', fill = '') +\n")
  cat("      theme_minimal() +\n")
  cat("      theme(legend.position = 'bottom', axis.text.x = element_text(angle = 45))\n\n")

  cat("99. Geometrias (geoms) mas usadas\n")
  cat("    * geom_point(aes(shape = cat, size = num), alpha = 0.7)  # dispersion\n")
  cat("    * geom_line(aes(group = cat, linetype = cat))            # lineas\n")
  cat("    * geom_bar(aes(fill = cat), position = 'dodge')          # barras (cuenta)\n")
  cat("    * geom_col(aes(x = cat, y = num))                       # columnas (valor)\n")
  cat("    * geom_boxplot(aes(fill = cat))                         # boxplots\n")
  cat("    * geom_text(aes(label = var), vjust = -0.5)            # etiquetas\n")
  cat("    * geom_smooth(method = 'lm', se = TRUE)                # regresion\n")
  cat("    * geom_vline(xintercept = 75, linetype = 'dashed')     # linea vertical\n")
  cat("    * geom_hline(yintercept = 25, linetype = 'dashed')     # linea horizontal\n\n")

  cat("100. Facetas\n")
  cat("    * facet_wrap(~ variable, nrow = 2)  # un panel por nivel\n")
  cat("    * facet_grid(filas ~ columnas)       # grilla de paneles\n")
  cat("    * facet_grid(cols = vars(var))       # columnas (dplyr style)\n")
  cat("    * scales = 'free_y'  # ejes Y independientes\n\n")

  cat("101. Escalas y colores\n")
  cat("    * scale_color_manual(values = c('rojo', 'azul'))\n")
  cat("    * scale_fill_manual(values = c('rojo', 'azul'))\n")
  cat("    * scale_x_discrete(limits = rev(levels(df$cat)))\n")
  cat("    * scale_y_log10()  # eje Y en escala log\n")
  cat("    * scale_fill_discrete(name = 'Leyenda', labels = c('A', 'B'))\n\n")

  cat("102. Ejes y coordenadas\n")
  cat("    * coord_flip()  # rotar 90 grados\n")
  cat("    * coord_polar(theta = 'y')  # grafico de pastel (pie chart)\n\n")

  cat("103. Temas\n")
  cat("    * theme_minimal(), theme_dark(), theme_void(), theme_classic()\n")
  cat("    * theme(legend.position = 'none'/'bottom'/'top')\n")
  cat("    * theme(axis.text.x = element_text(angle = 45, hjust = 1))\n")
  cat("    * options(scipen = 999)  # quita notacion cientifica en ejes\n\n")

  cat("104. Ordenamiento de factores en graficos (forcats)\n")
  cat("    * fct_infreq(col)  # ordena por frecuencia\n")
  cat("    * fct_reorder(col_cat, col_num)  # ordena por valor numerico\n")
  cat("    * reorder(col, -valor)  # orden descendente (dentro de aes())\n\n")

  cat("105. Pie chart (grafico de pastel)\n")
  cat("    * Plantilla:\n")
  cat("      df %>%\n")
  cat("        count(categoria) %>%\n")
  cat("        mutate(prop = n / sum(n)) %>%\n")
  cat("        ggplot(aes(x = '', y = prop, fill = categoria)) +\n")
  cat("        geom_col() +\n")
  cat("        coord_polar(theta = 'y')\n\n")

  cat("106. Proporciones en barras\n")
  cat("    * position = 'fill'  # escala de 0 a 1 (proporcion)\n")
  cat("    * position = 'dodge' # barras lado a lado\n\n")

}

#' @export
func_recap <- function() {
  cat("\n======================================================================\n")
  cat("            CREACION Y ESTRUCTURA DE FUNCIONES PROPIAS\n")
  cat("======================================================================\n\n")

  cat("POR QUE USAR FUNCIONES?\n")
  cat("Cuando te encuentres realizando la misma operacion una y otra vez,\n")
  cat("define una funcion para llamarla cuando sea necesario sin repetir codigo.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" SINTAXIS BASICA\n")
  cat("----------------------------------------------------------------------\n")
  cat("Toda funcion tiene 3 componentes: Entrada, Cuerpo y Salida.\n\n")
  cat("nombre_funcion <- function(x, y) {\n")
  cat("  r <- (x + y) * 2  # CUERPO\n")
  cat("  return(r)          # SALIDA\n")
  cat("}\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" REGLAS CLAVE\n")
  cat("----------------------------------------------------------------------\n\n")
  cat("1. Variables locales: Lo creado DENTRO de la funcion NO se guarda\n")
  cat("   en el ambiente global. Solo existen durante la ejecucion.\n\n")
  cat("2. Return: La ultima linea es el resultado. Usa return() por claridad.\n")
  cat("   Para texto, usa cat(): cat('El resultado es', valor)\n\n")
  cat("3. Flexibilidad: function(x, y, z) multi-argumento.\n")
  cat("   function() sin argumentos. Vectores como argumentos.\n\n")
  cat("4. Si faltan argumentos: R lanza error 'argument \"y\" is missing'.\n\n")
  cat("======================================================================\n")
}

#' @export
conditionals_recap <- function() {
  cat("\n======================================================================\n")
  cat("       CONDICIONALES: ESCALAR, VECTORIZADO Y MULTIPLE\n")
  cat("======================================================================\n\n")

  cat("1. if () {} else {} (R Base - Escalar, NO vectorizado)\n")
  cat("   * Plantilla: if (x > 0) { 'Positivo' } else { 'Negativo' }\n")
  cat("   * Solo opera sobre UN valor (longitud 1). Usar dentro de for-loops.\n\n")

  cat("2. ifelse() (R Base - Vectorizado)\n")
  cat("   * Plantilla: ifelse(vector > 0, 'positivo', 'negativo')\n")
  cat("   * Evalua CADA elemento del vector individualmente.\n\n")

  cat("3. if_else() (dplyr - Vectorizado y Estricto)\n")
  cat("   * Plantilla: df %>% mutate(cat = if_else(col > 10, 'Alto', 'Bajo'))\n")
  cat("   * Exige que 'true' y 'false' sean del MISMO tipo.\n\n")

  cat("4. case_when() (dplyr - Multiples condiciones)\n")
  cat("   * Plantilla:\n")
  cat("     df %>% mutate(cat = case_when(\n")
  cat("       col < 10  ~ 'Bajo',\n")
  cat("       col < 20  ~ 'Medio',\n")
  cat("       TRUE      ~ 'Alto'        # else universal\n")
  cat("     ))\n")
  cat("   * Evalua condiciones EN ORDEN de arriba a abajo.\n")
  cat("   * El 'TRUE ~ valor' funciona como else para lo que no encaje.\n")
  cat("   * Para NA explicito: TRUE ~ NA_character_\n\n")

  cat("5. which() - Identificar posiciones que cumplen condicion\n")
  cat("   * Plantilla: which(df$col > 10)  # indices donde se cumple\n")
  cat("   * Combinado: which(is.na(df$col))  # indices de NAs\n\n")

  cat("6. which.min() / which.max() - Posicion del min/max\n")
  cat("   * Plantilla: which.min(df$col)\n\n")
  cat("======================================================================\n")
}

#' @export
ggplot_recap <- function() {
  cat("\n======================================================================\n")
  cat("            GGPLOT2 - PLANTILLA MAESTRA Y GEOMS\n")
  cat("======================================================================\n\n")

  cat("# PLANTILLA MAESTRA DETALLADA\n")
  cat("ggplot(data = <DATA>) +\n")
  cat("  aes(x = <X>, y = <Y>, color = <GRUPO>, fill = <GRUPO>) +\n")
  cat("  geom_<TIPO>(mapping = aes(<LOCAL>)) +\n")
  cat("  labs(title = '', x = '', y = '', color = '', fill = '') +\n")
  cat("  theme_minimal() +\n")
  cat("  theme(legend.position = 'bottom', axis.text.x = element_text(angle = 45))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GEOMETRIAS (GEOMS) - CUANDO USAR CADA UNA\n")
  cat("----------------------------------------------------------------------\n\n")
  cat("1. DISPERSION (2 variables continuas):\n")
  cat("   geom_point(aes(shape = <CAT>, size = <NUM>), alpha = 0.7)\n\n")
  cat("2. LINEAS (tendencia temporal):\n")
  cat("   geom_line(aes(group = <CAT>, linetype = <CAT>), linewidth = 1)\n\n")
  cat("3. BARRAS (conteo automatico de filas):\n")
  cat("   geom_bar(aes(fill = <CAT>), position = 'dodge')\n\n")
  cat("4. COLUMNAS (valor pre-calculado en Y):\n")
  cat("   geom_col(aes(x = fct_reorder(<CAT>, <NUM>), y = <NUM>))\n\n")
  cat("5. BOXPLOT (distribuciones por categoria):\n")
  cat("   geom_boxplot(aes(fill = <CAT>), outlier.colour = 'red')\n\n")
  cat("6. TEXTO (etiquetar puntos):\n")
  cat("   geom_text(aes(label = <VAR>), vjust = -0.5)\n\n")
  cat("7. REGRESION / TENDENCIA:\n")
  cat("   geom_smooth(method = 'lm', se = TRUE)\n\n")
  cat("8. LINEAS DE REFERENCIA:\n")
  cat("   geom_vline(xintercept = 75, linetype = 'dashed', color = 'red')\n")
  cat("   geom_hline(yintercept = 25, linetype = 'dashed')\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" CONCEPTOS CLAVE\n")
  cat("----------------------------------------------------------------------\n")
  cat("* DENTRO de aes(): color/forma/tamano DEPENDE de los datos (columna).\n")
  cat("* FUERA de aes(): valor FIJO para todo el grafico (color = 'blue').\n")
  cat("* fct_infreq(col): ordena factores por frecuencia.\n")
  cat("* fct_reorder(cat, num): ordena categoria por valor numerico.\n")
  cat("* position = 'dodge': barras lado a lado.\n")
  cat("* position = 'fill': barras apiladas a proporcion (0-1).\n")
  cat("* coord_flip(): intercambia ejes X e Y.\n")
  cat("* coord_polar(theta = 'y'): grafico de pastel.\n\n")
  cat("======================================================================\n")
}

#' @export
loops_recap <- function() {
  cat("\n======================================================================\n")
  cat("                 ITERACIONES Y BUCLES (FOR / WHILE)\n")
  cat("======================================================================\n\n")

  cat("Los loops son utiles cuando el valor depende del calculo anterior.\n\n")

  cat("PASO 1. PRE-ALLOCATION (espacio de memoria):\n")
  cat("  resultados <- numeric(100)  # vector de 100 ceros\n")
  cat("  resultados <- vector()       # vector vacio (menos eficiente)\n\n")

  cat("PASO 2. DEFINIR LA SECUENCIA:\n")
  cat("  for (i in 1:100) { }\n")
  cat("  seq(1, 100, by = 2)  # pasos personalizados\n\n")

  cat("PASO 3. EL BUCLE:\n")
  cat("  for (i in 1:100) {\n")
  cat("    resultados[i] <- i + (i - 1)\n")
  cat("  }\n\n")

  cat("PASO 4. CON BREAK (detener antes):\n")
  cat("  for (i in 1:100) {\n")
  cat("    if (resultados[i-1] < 25) { break }\n")
  cat("  }\n\n")

  cat("PASO 5. WHILE LOOP (mientras condicion):\n")
  cat("  while (pH > 6 & abundancia > 25) {\n")
  cat("    tiempo <- tiempo + 1\n")
  cat("    pH <- pH - 0.1\n")
  cat("    abundancia <- abundancia * 0.9\n")
  cat("  }\n\n")

  cat("PASO 6. LOOP SOBRE NOMBRES:\n")
  cat("  for (m in names(mi_vector)) {\n")
  cat("    valor <- mi_vector[m]\n")
  cat("  }\n\n")

  cat("UTILIDADES DENTRO DEL LOOP:\n")
  cat("  cat('Iteracion', i, 'valor:', val, '\\n')  # imprimir progreso\n")
  cat("  runif(1, min = 1, max = 10)  # numeros aleatorios uniformes\n\n")
  cat("======================================================================\n")
}

#' @export
pivot_recap <- function() {
  cat("\n======================================================================\n")
  cat("             PIVOT_LONGER y PIVOT_WIDER\n")
  cat("======================================================================\n\n")

  cat("1. pivot_longer() - DE ANCHO A LARGO\n")
  cat("   Cuando: tus columnas son valores de una misma variable (ej. anos).\n\n")
  cat("   Plantilla:\n")
  cat("   df_largo <- df_ancho %>%\n")
  cat("     pivot_longer(\n")
  cat("       cols = c('2020', '2021', '2022'),  # columnas a derretir\n")
  cat("       names_to = 'Anio',                  # donde van los TITULOS\n")
  cat("       values_to = 'Conteo'                # donde van los VALORES\n")
  cat("     )\n\n")
  cat("   TIP: Usa starts_with(), ends_with(), contains() para cols.\n\n")

  cat("2. pivot_wider() - DE LARGO A ANCHO\n")
  cat("   Cuando: filas de una columna deberian ser columnas separadas.\n\n")
  cat("   Plantilla:\n")
  cat("   df_ancho <- df_largo %>%\n")
  cat("     pivot_wider(\n")
  cat("       names_from = Anio,\n")
  cat("       values_from = Conteo,\n")
  cat("       values_fill = 0\n")
  cat("     )\n\n")
  cat("   TIP: names_glue = 'prefijo_{variable}' para nombres personalizados.\n\n")

  cat("3. separate() - DIVIDIR UNA COLUMNA EN VARIAS\n")
  cat("   Plantilla: df %>% separate(col, into = c('a','b'), sep = '_')\n")
  cat("   TIP: remove = FALSE para conservar columna original.\n\n")

  cat("4. separate_wider_delim() - ALTERNATIVA MODERNA\n")
  cat("   separate_wider_delim(col, delim = ':', names = c('h', 'm', 's'))\n\n")
  cat("======================================================================\n")
}

#' @export
regex_recap <- function() {
  cat("\n======================================================================\n")
  cat("        EXPRESIONES REGULARES (REGEX) - GUIA COMPLETA\n")
  cat("======================================================================\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" PARTE 1: FUNCIONES DE STRINGR\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("1. str_length(x)     # longitud de cada string\n")
  cat("2. str_detect(x, p)  # contiene el patron? TRUE/FALSE\n")
  cat("3. str_count(x, p)   # cuantas veces aparece el patron\n")
  cat("4. str_extract(x, p) # extrae el PRIMER match\n")
  cat("5. str_extract_all(x, p) # extrae TODOS los matches (lista)\n")
  cat("6. str_replace(x, p, r)  # reemplaza el PRIMER match\n")
  cat("7. str_replace_all(x, p, r) # reemplaza TODOS\n")
  cat("8. str_sub(x, start, end) # extrae por posicion\n")
  cat("9. str_view(x, p)     # visualiza matches en consola\n")
  cat("10. str_match(x, p)   # extrae grupos de captura (matriz)\n")
  cat("11. str_split(x, p)   # divide en lista segun patron\n")
  cat("12. str_trim(x)       # elimina espacios al inicio/final\n")
  cat("13. str_trunc(x, n)   # acorta texto a n caracteres\n\n")

  cat("  Uso con ignore_case:\n")
  cat("    str_detect(x, regex('patron', ignore_case = TRUE))\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" PARTE 2: SINTAXIS REGEX\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("A) CLASES DE CARACTERES\n")
  cat("  .       -> Cualquier caracter (excepto \\n)\n")
  cat("  |       -> OR logico: (a|b) coincide con a o b\n")
  cat("  [...]   -> Lista de permitidos: [abc] = a, b o c\n")
  cat("  [a-z]   -> Rangos: [a-z] minusculas, [A-Z] mayus, [0-9] digitos\n")
  cat("  [^...]  -> EXCLUYE: [^ATGC] = lo que NO sea A,T,G,C\n")
  cat("  (...)   -> Grupo de captura. Reusable con \\\\1, \\\\2\n\n")

  cat("B) METACARACTERES\n")
  cat("  \\\\d -> cualquier digito [0-9]\n")
  cat("  \\\\D -> cualquier NO digito\n")
  cat("  \\\\s -> espacio en blanco\n")
  cat("  \\\\S -> cualquier NO espacio\n")
  cat("  \\\\w -> caracter de palabra (letras + digitos + _)\n")
  cat("  \\\\W -> cualquier NO caracter de palabra\n")
  cat("  NOTA: En R usar doble backslash: \\\\d\n\n")

  cat("C) ANCLAS (posicion)\n")
  cat("  ^  -> INICIO del string\n")
  cat("  $  -> FINAL del string\n")
  cat("  \\\\b -> borde de palabra completa\n")
  cat("  \\\\B -> NO es borde de palabra\n\n")

  cat("D) CUANTIFICADORES (repeticion)\n")
  cat("  *    -> 0 o mas veces\n")
  cat("  +    -> 1 o mas veces\n")
  cat("  ?    -> 0 o 1 vez (opcional)\n")
  cat("  {n}  -> exactamente n veces\n")
  cat("  {n,} -> al menos n veces\n")
  cat("  {n,m}-> entre n y m veces\n\n")

  cat("E) LOOKAROUNDS\n")
  cat("  (?<=X) Positive Lookbehind  -> antes debe existir X\n")
  cat("  (?<!X) Negative Lookbehind  -> antes NO debe existir X\n")
  cat("  (?=X)  Positive Lookahead   -> despues debe existir X\n")
  cat("  (?!X)  Negative Lookahead   -> despues NO debe existir X\n")
  cat("  CUIDADO: Lookbehind requiere LONGITUD FIJA\n\n")

  cat("F) EQUIVALENCIAS R BASE\n")
  cat("  grepl(p, x)  == str_detect(x, p)\n")
  cat("  grep(p, x, value = TRUE)  -> devuelve valores que matchean\n")
  cat("  sub(p, r, x) == str_replace(x, p, r)\n")
  cat("  gsub(p, r, x) == str_replace_all(x, p, r)\n\n")
  cat("======================================================================\n")
}

#' @export
dataframe_creation_recap <- function() {
  cat("\n======================================================================\n")
  cat("             COMO CREAR UN DATAFRAME\n")
  cat("======================================================================\n\n")

  cat("1. METODO DIRECTO (vectores existentes):\n")
  cat("   df <- data.frame(\n")
  cat("     col1 = vector_1,\n")
  cat("     col2 = vector_2,\n")
  cat("     col3 = c('a', 'b', 'c'),  # valores directos\n")
  cat("     col4 = 0                   # valor fijo se recicla\n")
  cat("   )\n\n")

  cat("2. METODO DINAMICO (vector base + derivacion):\n")
  cat("   df_inicial <- data.frame(secuencia = vector_base)\n")
  cat("   df_final <- df_inicial %>%\n")
  cat("     mutate(\n")
  cat("       categoria = case_when(\n")
  cat("         str_detect(secuencia, '-')   ~ 'guion',\n")
  cat("         str_detect(secuencia, '\\\\s')  ~ 'espacio',\n")
  cat("         TRUE                          ~ 'limpio'\n")
  cat("       )\n")
  cat("     )\n\n")

  cat("3. REGLAS DE ORO:\n")
  cat("   * Todos los vectores deben tener la MISMA longitud.\n")
  cat("   * Un solo valor fijo se recicla automaticamente.\n")
  cat("   * stringsAsFactors = FALSE para evitar conversion automatica.\n")
  cat("   * Evita espacios en nombres de columnas (usa '_' en su lugar).\n")
  cat("======================================================================\n")
}

#' @export
clean_data_recap <- function() {
  cat("\n======================================================================\n")
  cat("             LIMPIEZA DE DATOS (DATA CLEANING)\n")
  cat("======================================================================\n\n")

  cat("1. Identificar columnas sin variabilidad:\n")
  cat("   df %>% summarise(across(everything(), ~ n_distinct(., na.rm = FALSE)))\n")
  cat("   # Luego excluir las que tienen 1 valor unico:\n")
  cat("   df %>% select(where(~ n_distinct(., na.rm = FALSE) > 1))\n\n")

  cat("2. Eliminar columnas completamente vacias:\n")
  cat("   df <- df[, colSums(is.na(df)) < nrow(df)]\n\n")

  cat("3. Eliminar columnas con nombres duplicados:\n")
  cat("   df <- df[, !duplicated(colnames(df))]\n\n")

  cat("4. Eliminar filas duplicadas:\n")
  cat("   df <- df[!duplicated(df), ]\n\n")

  cat("5. Convertir character a factor MASIVAMENTE:\n")
  cat("   df <- df %>% mutate(across(where(is.character), as.factor))\n")
  cat("   # O R Base:\n")
  cat("   df <- as.data.frame(lapply(df, function(x)\n")
  cat("     if (is.character(x)) as.factor(x) else x))\n\n")

  cat("6. Fusionar columnas duplicadas despues de un join:\n")
  cat("   df$col_clean <- coalesce(df$col.x, df$col.y)\n")
  cat("   df <- df %>% select(-ends_with('.x'), -ends_with('.y'))\n\n")

  cat("7. Identificar columnas con patron en nombre (.x, .y):\n")
  cat("   grep('\\\\.x$', colnames(df), value = TRUE)\n\n")

  cat("8. Eliminar filas con NA en columnas especificas:\n")
  cat("   df %>% filter(!is.na(col1), !is.na(col2))\n\n")

  cat("9. Reemplazar valores usando which():\n")
  cat("   df$col[which(df$col == 'Mal escrito')] <- 'Bien escrito'\n\n")
  cat("======================================================================\n")
}

#' @export
join_recap <- function() {
  cat("\n======================================================================\n")
  cat("             JOINS - CUAL USAR Y CUANDO\n")
  cat("======================================================================\n\n")

  cat("RESUMEN RAPIDO:\n")
  cat("  left_join(x, y)   -> Conserva TODAS las filas de x.\n")
  cat("                      Si no hay match en y -> NA.\n")
  cat("                      USO: Cuando x es la tabla principal.\n\n")

  cat("  right_join(x, y)  -> Conserva TODAS las filas de y.\n")
  cat("                      Lo opuesto a left_join.\n\n")

  cat("  inner_join(x, y)  -> Solo filas que coinciden EN AMBAS.\n")
  cat("                      USO: Cuando solo interesan datos completos.\n\n")

  cat("  full_join(x, y)   -> Conserva TODAS las filas de ambas.\n")
  cat("                      Donde no hay match -> NA.\n")
  cat("                      USO: Cuando no quieres perder informacion.\n\n")

  cat("  anti_join(x, y)   -> Filas de x que NO tienen match en y.\n")
  cat("                      USO: Para diagnosticar perdida de datos.\n\n")

  cat("SINTAXIS:\n")
  cat("  df <- left_join(tabla1, tabla2, by = 'columna_llave')\n")
  cat("  df <- left_join(t1, t2, by = c('id' = 'ID', 'anio' = 'year'))\n")
  cat("  # Cuando los nombres de la llave son diferentes en cada tabla\n\n")

  cat("ALTERNATIVA R BASE:\n")
  cat("  merge(t1, t2, by = 'species', all = TRUE)  # full join\n")
  cat("  merge(t1, t2, by = 'species', all.x = TRUE) # left join\n\n")
  cat("======================================================================\n")
}

#' @export
aggregate_recap <- function() {
  cat("\n======================================================================\n")
  cat("             AGGREGATE() vs GROUP_BY + SUMMARISE()\n")
  cat("======================================================================\n\n")

  cat("aggregate() - R Base (stats):\n")
  cat("  Plantilla basica:\n")
  cat("    aggregate(df$num, list(categoria = df$cat), FUN = mean)\n\n")
  cat("  Plantilla formula:\n")
  cat("    aggregate(num ~ cat, data = df, FUN = mean)\n\n")
  cat("  Multiples grupos:\n")
  cat("    aggregate(num ~ cat1 + cat2, data = df, FUN = mean)\n\n")
  cat("  DIFERENCIA: No funciona con pipe '%>%', resultado es menos personalizable.\n\n")

  cat("group_by() + summarise() - tidyverse:\n")
  cat("  Plantilla:\n")
  cat("    df %>%\n")
  cat("      group_by(categoria) %>%\n")
  cat("      summarise(promedio = mean(num, na.rm = TRUE))\n\n")
  cat("  VENTAJA: Funciona con pipe, mas flexible, mas columnas, mas funciones.\n\n")
  cat("======================================================================\n")
}

#' @export
orfs_analysis_recap <- function() {
  cat("\n======================================================================\n")
  cat("             ANALISIS DE ORFs Y SECUENCIAS DE ADN\n")
  cat("======================================================================\n\n")

  cat("1. Validar que una secuencia SOLO contiene ATGC:\n")
  cat("   str_detect(seqs, '^[ATGC]+$')\n\n")

  cat("2. Detectar codon de inicio ATG al principio:\n")
  cat("   str_detect(seqs, '^ATG')\n\n")

  cat("3. Detectar codon de stop al final:\n")
  cat("   str_detect(seqs, '(TAA|TAG|TGA)$')\n\n")

  cat("4. ORF completo (inicio + stop):\n")
  cat("   str_detect(seqs, '^ATG.*(TAA|TAG|TGA)$')\n\n")

  cat("5. Extraer codones (grupos de 3 bases):\n")
  cat("   str_extract_all(seq, '[ATGC]{3}')\n\n")

  cat("6. Extrear los primeros N caracteres:\n")
  cat("   str_sub(seq, 1, 10)\n\n")

  cat("7. Calcular porcentaje GC:\n")
  cat("   100 * str_count(seq, '[GC]') / str_length(seq)\n\n")

  cat("8. Detectar caracteres ambiguos:\n")
  cat("   str_detect(seqs, '[^ATGC]')\n")
  cat("   str_count(seqs, '[^ATGC]')  # cuantos hay\n\n")

  cat("9. Extraer patron despues de un motivo:\n")
  cat("   str_extract(seq, '(?<=GGAAC)[ATCG]{3}')\n\n")

  cat("10. Clasificar ADN vs ARN:\n")
  cat("    ifelse(str_detect(seq, 'T'), 'ADN', 'ARN')\n\n")
  cat("======================================================================\n")
}

#' @export
menu <- function() {
  cat("\n============================================\n")
  cat("  MENU DE AYUDA RAPIDA - UTILS.R\n")
  cat("============================================\n\n")
  cat("  function_registry()     - Guia completa (106 temas)\n")
  cat("  func_recap()            - Funciones propias\n")
  cat("  conditionals_recap()    - Condicionales\n")
  cat("  ggplot_recap()          - ggplot2 y geoms\n")
  cat("  loops_recap()           - For y While loops\n")
  cat("  pivot_recap()           - pivot_longer/wider\n")
  cat("  regex_recap()           - Expresiones regulares\n")
  cat("  dataframe_creation_recap() - Crear dataframes\n")
  cat("  clean_data_recap()      - Limpieza de datos\n")
  cat("  join_recap()            - Joins (left, inner, etc)\n")
  cat("  aggregate_recap()       - aggregate() vs group_by\n")
  cat("  orfs_analysis_recap()   - Analisis de secuencias ADN\n")
  cat("============================================\n")
}
