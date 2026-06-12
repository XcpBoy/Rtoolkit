#' @export
function_registry <- function() {
  cat("========================================================================\n")
  cat("  UTILS.R - GUIA COMPLETA DE REFERENCIA R\n")
  cat("  Cada entrada incluye: firma de la funcion, parametros,\n")
  cat("  tipos de datos esperados, y plantilla de uso\n")
  cat("========================================================================\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 1: VECTORES, MATRICES Y TIPOS DE DATOS (R BASE)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("1. c(...) — Combinar valores en un vector\n")
  cat("   · ...: (valores, requerido) Valores separados por coma.\n")
  cat("     Si van entre \"\" son character, si no, numericos.\n")
  cat("   · Plantilla: v <- c(1, 2, 3)\n\n")

  cat("2. names(x) <- valor / setNames() — Asignar nombres a elementos\n")
  cat("   · x: (vector, requerido) Vector a nombrar.\n")
  cat("   · valor: (character, requerido) Nombres (misma longitud que x).\n")
  cat("   · Plantilla: names(v) <- c('a','b','c')\n")
  cat("   · Alternativa: v <- setNames(c(1,2), c('a','b'))\n\n")

  cat("3. seq(from, to, by) / from:to — Secuencias numericas\n")
  cat("   · from: (numeric, requerido) Inicio.\n")
  cat("   · to: (numeric, requerido) Fin.\n")
  cat("   · by: (numeric, opcional) Paso (default=1).\n")
  cat("   · Plantilla: seq(0, 10, by = 2)\n\n")

  cat("4. length(x) / class(x) / is.*(x) — Longitud y tipo\n")
  cat("   · x: (cualquier objeto, requerido) El objeto a evaluar.\n")
  cat("   · is.numeric(), is.character(), is.factor(), is.vector(),\n")
  cat("     is.data.frame(), is.matrix() devuelven TRUE/FALSE.\n")
  cat("   · Plantilla: length(v); class(v); is.numeric(v)\n\n")

  cat("5. matrix(data, nrow, ncol) — Crear matriz\n")
  cat("   · data: (vector, requerido) Datos.\n")
  cat("   · nrow: (integer, requerido) Filas.\n")
  cat("   · ncol: (integer, requerido) Columnas.\n")
  cat("   · Acceso: m[fila, col]; m[1,] = fila 1; m[,2] = col 2\n")
  cat("   · Plantilla: matrix(1:6, nrow = 2, ncol = 3)\n\n")

  cat("6. factor(x, levels) / levels(x) — Factores (categoricas)\n")
  cat("   · x: (character, requerido) Vector a convertir.\n")
  cat("   · levels: (character, opcional) Orden de los niveles.\n")
  cat("   · table(x) cuenta frecuencia de cada nivel.\n")
  cat("   · droplevels(x) elimina niveles no usados.\n\n")

  cat("7. Operadores relacionales y logicos\n")
  cat("   · == (igual a), != (diferente de), >, <, >=, <=\n")
  cat("   · & (Y logico — ambos TRUE), | (O logico — alguno TRUE)\n")
  cat("   · ! (negacion), %in% (pertenencia a conjunto)\n")
  cat("   · Prioridad: ^ > */ > +- > <> == != > ! > & > | <-\n\n")

  cat("8. mean(x, na.rm) / summary(x) — Estadisticos basicos\n")
  cat("   · x: (numeric, requerido) Vector de datos.\n")
  cat("   · na.rm: (logical, opcional) TRUE ignora NAs (default=FALSE).\n")
  cat("   · median(), sd(), min(), max(), sum() misma estructura.\n")
  cat("   · Plantilla: mean(v, na.rm = TRUE)\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 2: ESTRUCTURA Y EXPLORACION DE DATAFRAMES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("9. str(df) / glimpse(df) — Estructura interna\n")
  cat("   · df: (data.frame, requerido) Objeto a explorar.\n")
  cat("   · str() muestra tipo de cada columna y primeras filas.\n")
  cat("   · glimpse() (tidyverse) es mas compacto y legible.\n\n")

  cat("10. head(df, n) / tail(df, n) — Primeras/ultimas filas\n")
  cat("    · df: (data.frame, requerido).\n")
  cat("    · n: (integer, opcional) Filas a mostrar (default=6).\n\n")

  cat("11. nrow(df) / ncol(df) / dim(df) — Dimensiones\n")
  cat("    · df: (data.frame, requerido).\n")
  cat("    · nrow() = filas, ncol() = columnas, dim() = ambos.\n\n")

  cat("12. names(df) / colnames(df) — Nombres de columnas\n")
  cat("    · df: (data.frame, requerido).\n")
  cat("    · names(df) <- c('a','b','c') los renombra.\n\n")

  cat("13. df$col / df[['col']] — Acceso a columnas\n")
  cat("    · df: (data.frame, requerido).\n")
  cat("    · $ accede por nombre; [[ ]] permite nombre en variable.\n")
  cat("    · df[filas, columnas] acceso por corchetes.\n\n")

  cat("14. across(.cols, .fns) — Aplicar funcion a multiples columnas\n")
  cat("    · .cols: (seleccion de columnas, requerido) Ej: where(is.numeric)\n")
  cat("    · .fns: (funcion o lista, requerido) ~mean(.x, na.rm=TRUE)\n")
  cat("    · Se usa DENTRO de summarise() o mutate().\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 3: DPLYR — SELECCIONAR Y RENOMBRAR COLUMNAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("15. select(.data, ...) — Elegir columnas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · ...: (nombres, requerido) Columnas a conservar. Con - se excluyen.\n")
  cat("    · Plantilla: df %>% select(col1, col2, -col3)\n\n")

  cat("16. Helpers de select() — Busqueda inteligente\n")
  cat("    · starts_with('x'): columnas que empiezan con x.\n")
  cat("    · ends_with('x'): terminan con x.\n")
  cat("    · contains('x'): contienen x.\n")
  cat("    · matches('regex'): cumplen expresion regular.\n")
  cat("    · where(is.numeric): todas las numericas.\n")
  cat("    · everything(): todas. last_col(): la ultima.\n")
  cat("    · all_of(v) / any_of(v): columnas en un vector.\n\n")

  cat("17. rename(.data, nuevo = viejo) — Renombrar columnas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · nuevo = viejo: (asignacion, requerido) Nuevo nombre = nombre actual.\n\n")

  cat("18. relocate(.data, ...) — Reordenar columnas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · .before / .after: (columna, opcional) Referencia de posicion.\n")
  cat("    · Plantilla: df %>% relocate(col, .after = last_col())\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 4: DPLYR — FILTRAR Y ORDENAR FILAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("19. filter(.data, ...) — Filtrar filas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · ...: (condiciones logicas, requerido) Expresiones que evaluan a TRUE.\n")
  cat("      Las condiciones separadas por coma funcionan como Y (&).\n")
  cat("    · | para O logico; %in% para varios valores; !is.na() sin NA.\n")
  cat("    · Plantilla: df %>% filter(especie == 'X', num > 10)\n\n")

  cat("20. subset(x, subset, select) — R Base: filter + select juntos\n")
  cat("    · x: (data.frame, requerido).\n")
  cat("    · subset: (condicion, opcional) Filas a conservar.\n")
  cat("    · select: (vector, opcional) Columnas a conservar.\n\n")

  cat("21. slice(.data, ...) / slice_min() / slice_max() — Filas por posicion\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · slice(1:5): filas 1 a 5 por indice.\n")
  cat("    · slice_min(col, n=3): 3 filas con menor valor en col.\n")
  cat("    · slice_max(col, n=3): 3 filas con mayor valor.\n\n")

  cat("22. arrange(.data, ...) — Ordenar filas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · ...: (columnas, requerido) Por cuales ordenar.\n")
  cat("    · desc(col) para orden descendente.\n\n")

  cat("23. count(x, ...) — Contar frecuencias\n")
  cat("    · x: (data.frame, requerido).\n")
  cat("    · ...: (columnas, opcional) Por cuales agrupar el conteo.\n")
  cat("    · sort = TRUE ordena de mayor a menor.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 5: DPLYR — CREAR COLUMNAS CON MUTATE\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("24. mutate(.data, ...) — Crear/modificar columnas\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · ...: (asignaciones nombre = expresion, requerido).\n")
  cat("    · La expresion puede ser aritmetica (col1 + col2), de texto\n")
  cat("      (paste(col1, col2)), o funciones (mean(col)).\n")
  cat("    · Plantilla: df %>% mutate(nueva = col1 / col2 * 100)\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 6: DPLYR — AGRUPAR Y RESUMIR\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("25. group_by(.data, ...) + summarise(...) — Resumen por grupos\n")
  cat("    · group_by: (data.frame, columnas) Agrupa para operaciones posteriores.\n")
  cat("    · summarise: (asignaciones, requerido) Estadisticos por grupo.\n")
  cat("    · n() cuenta filas del grupo; n_distinct(col) valores unicos.\n")
  cat("    · .groups = 'drop' desagrupa automaticamente.\n\n")

  cat("26. summarise(across(.cols, .fns)) — Varias columnas a la vez\n")
  cat("    · across(c(col1, col2), list(prom = ~mean(.x), min = ~min(.x)))\n")
  cat("    · (.x representa cada columna; ~ es azucar sintactico para function)\n\n")

  cat("27. group_by(...) + mutate(...) — Estadisticos SIN colapsar\n")
  cat("    · DIFERENCIA CLAVE: summarise() colapsa a 1 fila por grupo.\n")
  cat("    · mutate() anade el resultado a CADA fila del grupo.\n")
  cat("    · Util para: crear columna con media grupal, etc.\n\n")

  cat("28. pull(.data, var) — Extraer columna como vector\n")
  cat("    · .data: (data.frame, requerido).\n")
  cat("    · var: (columna, requerido) La columna a extraer.\n")
  cat("    · Resultado es un VECTOR, no un data.frame.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 7: OPERACIONES POR FILA\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("29. rowSums(x, na.rm) — Sumar por fila\n")
  cat("    · x: (data.frame numerico O select dentro de mutate, requerido).\n")
  cat("    · na.rm: (logical, opcional) TRUE ignora NAs.\n")
  cat("    · Plantilla: df %>% mutate(total = rowSums(select(., where(is.numeric))))\n\n")

  cat("30. rowwise(df) + c_across(cols) — CUALQUIER operacion por fila\n")
  cat("    · rowwise: (data.frame) Cambia a modo fila-por-fila.\n")
  cat("    · c_across(starts_with('spp')): combina columnas como vector.\n")
  cat("    · Requiere ungroup() al final para volver a modo normal.\n")
  cat("    · Permite mean(), max(), min(), etc. por fila.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 8: JOINS — COMBINAR TABLAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("31. left_join(x, y, by) — Mantiene TODAS las filas de x\n")
  cat("    · x: (data.frame, requerido) Tabla izquierda (principal).\n")
  cat("    · y: (data.frame, requerido) Tabla derecha (a pegar).\n")
  cat("    · by: (character, requerido) Columna(s) llave.\n")
  cat("    · Si no hay match en y -> NA.\n\n")

  cat("32. inner_join(x, y, by) — Solo filas que coinciden en AMBAS\n")
  cat("    · x, y: (data.frame, requeridos).\n")
  cat("    · by: (character, requerido) Columna(s) llave.\n\n")

  cat("33. full_join(x, y, by) — TODAS las filas de ambas\n")
  cat("    · Donde no hay match -> NA. Util para no perder datos.\n\n")

  cat("34. anti_join(x, y, by) — Filas de x SIN match en y\n")
  cat("    · Util para diagnosticar perdida de datos en un join.\n\n")

  cat("35. bind_rows(x, y) / bind_cols(x, y) — Unir por filas o columnas\n")
  cat("    · bind_rows: apila df debajo (mismas columnas).\n")
  cat("    · bind_cols: pega columnas a la derecha (mismas filas).\n")
  cat("    · NO necesita llave. Solo posicion.\n\n")

  cat("36. coalesce(x, y) — Primer valor NO-NA entre columnas\n")
  cat("    · x, y: (vectores, requeridos) Toma el valor de x si no es NA,\n")
  cat("      si no, toma el de y. Util para limpiar .x/.y post-join.\n\n")

  cat("37. intersect(x, y) / setdiff(x, y) — Comparar conjuntos\n")
  cat("    · intersect(x, y): elementos que estan en x Y en y.\n")
  cat("    · setdiff(x, y): elementos en x que NO estan en y.\n")
  cat("    · x, y: (vectores, requeridos) Pueden ser columnas de un df.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 9: PIVOT — TRANSFORMAR TABLAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("38. pivot_longer(data, cols, names_to, values_to) — Ancho a largo\n")
  cat("    · data: (data.frame, requerido).\n")
  cat("    · cols: (seleccion, requerido) Columnas a \"derretir\".\n")
  cat("    · names_to: (character, requerido) Nombre columna con los titulos.\n")
  cat("    · values_to: (character, requerido) Nombre columna con los valores.\n")
  cat("    · names_prefix: (character, opcional) Quita prefijo de names_to.\n\n")

  cat("39. pivot_wider(data, names_from, values_from) — Largo a ancho\n")
  cat("    · data: (data.frame, requerido).\n")
  cat("    · names_from: (columna, requerido) De donde salen los nuevos nombres.\n")
  cat("    · values_from: (columna, requerido) De donde salen los valores.\n")
  cat("    · values_fill: (valor, opcional) Con que rellenar si no hay dato.\n\n")

  cat("40. separate(data, col, into, sep) / separate_wider_delim()\n")
  cat("    · data: (data.frame, requerido).\n")
  cat("    · col: (columna, requerido) Columna a dividir.\n")
  cat("    · into: (character, requerido) Nombres de las nuevas columnas.\n")
  cat("    · sep: (character, requerido) Caracter separador.\n")
  cat("    · remove = FALSE conserva la columna original.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 10: VALORES FALTANTES (NAs)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("41. is.na(x) — Detectar NAs\n")
  cat("    · x: (vector o df, requerido) Devuelve TRUE donde hay NA.\n")
  cat("    · sum(is.na(x)) cuenta NAs; any(is.na(x)) pregunta si existe.\n")
  cat("    · which(is.na(x)) devuelve las posiciones de los NAs.\n\n")

  cat("42. complete.cases(x) — Filas COMPLETAS (sin NA)\n")
  cat("    · x: (data.frame, requerido) Devuelve TRUE para filas sin NA.\n")
  cat("    · sum(complete.cases(x)) = filas totalmente completas.\n\n")

  cat("43. drop_na(data, ...) — Eliminar filas con NA\n")
  cat("    · data: (data.frame, requerido).\n")
  cat("    · ...: (columnas, opcional) Si se especifica, solo evalua esas.\n")
  cat("    · Sin columnas: elimina filas con NA en cualquier columna.\n\n")

  cat("44. replace_na(data, replace) — Reemplazar NAs\n")
  cat("    · data: (data.frame o vector, requerido).\n")
  cat("    · replace: (lista, requerido) Ej: list(col1 = 0, col2 = 'otro')\n")
  cat("    · En mutate: df %>% mutate(col = replace_na(col, 0))\n\n")

  cat("45. na.rm = TRUE — Ignorar NAs en funciones\n")
  cat("    · Funciona en mean(), sum(), sd(), min(), max(), etc.\n")
  cat("    · SIN na.rm = TRUE: si hay UN NA, el resultado es NA.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 11: CONDICIONALES Y CONTROL DE FLUJO\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("46. if (cond) { ... } else { ... } — Condicional ESCALAR\n")
  cat("    · cond: (logical de LONGITUD 1, requerido) Solo funciona con un valor.\n")
  cat("    · Si cond es TRUE ejecuta el primer bloque, si no, el else.\n")
  cat("    · NO es vectorizado — usar dentro de for-loops o funciones.\n\n")

  cat("47. ifelse(test, yes, no) — Condicional VECTORIZADO (R Base)\n")
  cat("    · test: (logical vector, requerido) Condicion para cada elemento.\n")
  cat("    · yes: (valor, requerido) Resultado si TRUE.\n")
  cat("    · no: (valor, requerido) Resultado si FALSE.\n")
  cat("    · Se puede anidar: ifelse(x>0, 'pos', ifelse(x<0, 'neg', 'cero'))\n\n")

  cat("48. case_when(...) — Multiples condiciones (dplyr)\n")
  cat("    · ...: (condicion ~ valor, requerido) Evaluado EN ORDEN.\n")
  cat("    · TRUE ~ 'else' funciona como el else universal.\n")
  cat("    · Orden: pon condiciones mas ESPECIFICAS arriba.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 12: FUNCIONES PROPIAS\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("49. function(parametros) { cuerpo } — Definir funcion\n")
  cat("    · parametros: (nombres, requerido) Lo que recibe la funcion.\n")
  cat("    · cuerpo: (codigo R, requerido) Operaciones. El resultado de la\n")
  cat("      ultima linea es lo que se retorna (o usar return()).\n")
  cat("    · Las variables CREADAS dentro NO existen fuera.\n")
  cat("    · Si falta un argumento: error 'argument \"y\" is missing'.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 13: LOOPS (FOR, WHILE)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("50. for (var in secuencia) { cuerpo } — Bucle\n")
  cat("    · var: (nombre, requerido) Variable que toma cada valor.\n")
  cat("    · secuencia: (vector, requerido) Valores a iterar (ej: 1:10).\n")
  cat("    · Siempre PRE-ALLOCA: resultados <- numeric(n) antes del loop.\n")
  cat("    · break detiene el loop; next salta a la siguiente iteracion.\n\n")

  cat("51. while (condicion) { cuerpo } — Bucle condicional\n")
  cat("    · condicion: (logical, requerido) Se evalua ANTES de cada iteracion.\n")
  cat("    · El cuerpo debe MODIFICAR algo que afecte la condicion,\n")
  cat("      o sera un loop infinito.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 14: STRINGS Y REGEX (stringr)\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("52. str_detect(string, pattern) — Contiene el patron? (TRUE/FALSE)\n")
  cat("    · string: (character vector, requerido) Donde buscar.\n")
  cat("    · pattern: (character, requerido) Patron regex a buscar.\n")
  cat("    · ignore_case: meter el patron dentro de regex(pattern, ignore_case = TRUE)\n\n")

  cat("53. str_count(string, pattern) — Cuantas veces aparece\n")
  cat("    · string: (character, requerido).\n")
  cat("    · pattern: (character, requerido). Devuelve un entero por elemento.\n\n")

  cat("54. str_extract(string, pattern) — Extrae el primer match\n")
  cat("    · string: (character, requerido).\n")
  cat("    · pattern: (character, requerido). str_extract_all() extrae TODOS.\n\n")

  cat("55. str_replace(string, pattern, replacement) — Reemplazar\n")
  cat("    · string: (character, requerido).\n")
  cat("    · pattern: (character, requerido) Que buscar.\n")
  cat("    · replacement: (character, requerido) Por que reemplazar.\n")
  cat("    · str_replace() = 1er match; str_replace_all() = todos.\n")
  cat("    · str_remove() = str_replace(x, p, '') — eliminar patron.\n\n")

  cat("56. str_sub(string, start, end) — Extraer por posicion\n")
  cat("    · string: (character, requerido).\n")
  cat("    · start: (integer, requerido) Posicion inicial.\n")
  cat("    · end: (integer, opcional) Posicion final. Negativo = desde atras.\n\n")

  cat("57. str_match(string, pattern) — Grupos de captura\n")
  cat("    · string: (character, requerido).\n")
  cat("    · pattern: (character, requerido) Con () para grupos.\n")
  cat("    · Devuelve MATRIZ: col 1 = match completo, col 2+ = grupos.\n\n")

  cat("58. str_split(string, pattern) — Dividir en lista\n")
  cat("    · string: (character, requerido).\n")
  cat("    · pattern: (character, requerido) Donde dividir.\n")
  cat("    · Devuelve una LISTA (un vector por elemento original).\n\n")

  cat("59. writeLines(x) — Mostrar vector elemento por linea\n")
  cat("    · x: (character vector, requerido) Cada elemento en su propia linea.\n")
  cat("    · Util para ver resultados de str_detect() legibles.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 15: REGEX — CLASES, ANCLAS, CUANTIFICADORES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("60. Clases de caracteres [ ]\n")
  cat("    · [abc]: un caracter que sea a, b o c.\n")
  cat("    · [^abc]: un caracter que NO sea a, b ni c.\n")
  cat("    · [a-z], [A-Z], [0-9]: rangos.\n")
  cat("    · [hH]: busca 'h' O 'H' (util para mayus/min sin usar ignore_case).\n")
  cat("    · [ATGC]: solo bases de ADN.\n\n")

  cat("61. Metacaracteres\n")
  cat("    · . = cualquier caracter; \\\\d = digito; \\\\D = NO digito.\n")
  cat("    · \\\\s = espacio; \\\\S = NO espacio.\n")
  cat("    · \\\\w = caracter de palabra; \\\\W = NO caracter de palabra.\n")
  cat("    · En R usar doble backslash: \\\\d, \\\\s.\n\n")

  cat("62. Anclas (posicion)\n")
  cat("    · ^ = inicio del string.\n")
  cat("    · $ = final del string.\n")
  cat("    · \\\\b = limite de palabra completa.\n")
  cat("    · Ej: '^ATG' empieza con ATG; 'TGA$' termina con TGA.\n\n")

  cat("63. Cuantificadores (repeticion)\n")
  cat("    · ? = 0 o 1 vez (opcional).\n")
  cat("    · + = 1 o mas veces.\n")
  cat("    · * = 0 o mas veces.\n")
  cat("    · {n} = exactamente n veces.\n")
  cat("    · {n,} = al menos n veces.\n")
  cat("    · {n,m} = entre n y m veces.\n\n")

  cat("64. Lookarounds (contexto sin incluir)\n")
  cat("    · (?<=X) Positive Lookbehind: antes debe estar X.\n")
  cat("    · (?<!X) Negative Lookbehind: antes NO debe estar X.\n")
  cat("    · (?=X) Positive Lookahead: despues debe estar X.\n")
  cat("    · (?!X) Negative Lookahead: despues NO debe estar X.\n")
  cat("    · CUIDADO: Lookbehind requiere LONGITUD FIJA.\n")
  cat("    · Ej: '(?<=\\\\.)\\\\d+$' extrae version despues del punto.\n\n")

  cat("65. Grupos de captura (patron) y retroreferencias \\\\1\n")
  cat("    · El patron entre () se CAPTURA y puede reusarse con \\\\1.\n")
  cat("    · str_match() extrae cada grupo en una columna.\n")
  cat("    · Ej: '(CAG){3,}' son 3 o mas repeticiones de CAG.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 16: GGPLOT2 — VISUALIZACION\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("66. ggplot(data) + aes(...) + geom_*() — Estructura basica\n")
  cat("    · data: (data.frame, requerido) Los datos a graficar.\n")
  cat("    · aes(x, y, color, fill): mapeo de VARIABLES a ESTETICAS.\n")
  cat("    · aes() en ggplot() se hereda a todas las capas.\n")
  cat("    · aes() DENTRO de un geom solo afecta a esa capa.\n")
  cat("    · Valores FIJOS (color='blue') van FUERA de aes().\n\n")

  cat("67. Geoms principales\n")
  cat("    · geom_point(): dispersion. alpha= opacidad.\n")
  cat("    · geom_line(): lineas. group= para multiples lineas.\n")
  cat("    · geom_bar(): barras por conteo. position='dodge'/'fill'.\n")
  cat("    · geom_col(): columnas con Y pre-calculado.\n")
  cat("    · geom_boxplot(): cajas y bigotes. fill= color interno.\n")
  cat("    · geom_histogram(bins=30): histograma.\n")
  cat("    · geom_smooth(method='lm'): regresion.\n")
  cat("    · geom_vline() / geom_hline(): lineas de referencia.\n")
  cat("    · geom_text(aes(label=var)): etiquetas.\n")
  cat("    · geom_jitter(): puntos con ruido (evita solapamiento).\n\n")

  cat("68. facet_wrap(~ var) / facet_grid(filas ~ cols) — Paneles\n")
  cat("    · scales = 'free_y': ejes Y independientes por panel.\n\n")

  cat("69. coord_flip() / coord_polar() / coord_cartesian()\n")
  cat("    · coord_flip(): intercambia X e Y.\n")
  cat("    · coord_polar(theta='y'): grafico de pastel.\n")
  cat("    · coord_cartesian(xlim=c(0,10)): ZOOM sin eliminar datos\n")
  cat("      (a diferencia de xlim/ylim que SII eliminan datos).\n\n")

  cat("70. theme_*() + element_rect() — Personalizacion\n")
  cat("    · theme_minimal(), theme_dark(), theme_void(), theme_classic().\n")
  cat("    · theme(axis.text.x = element_text(angle=45, hjust=1)).\n")
  cat("    · element_rect(fill, color): fondos y bordes de:\n")
  cat("      panel.background, plot.background, legend.background, strip.background.\n\n")

  cat("71. scale_*() — Escalas\n")
  cat("    · scale_fill_manual(values=c(...)): colores manuales para fill.\n")
  cat("    · scale_color_manual(values=c(...)): colores manuales para color.\n")
  cat("    · scale_y_log10(): eje Y en escala log.\n")
  cat("    · scale_x_discrete(limits=rev(levels(factor))): invertir orden.\n\n")

  cat("72. labs() — Etiquetas\n")
  cat("    · labs(title, subtitle, x, y, color, fill, caption).\n")
  cat("    · Todos son strings (character). Opcionales.\n\n")

  cat("73. grid.arrange(plot1, plot2, ncol) — Multiples graficos\n")
  cat("    · Del paquete gridExtra. Organiza graficos en grilla.\n")
  cat("    · ncol = numero de columnas. top = titulo general.\n\n")

  cat("----------------------------------------------------------------------\n")
  cat(" GRUPO 17: FUNCIONES ADICIONALES UTILES\n")
  cat("----------------------------------------------------------------------\n\n")

  cat("74. View(x) — Inspeccion visual en RStudio\n")
  cat("    · x: (data.frame, requerido). Abre pestana interactiva.\n\n")

  cat("75. do.call(what, args) — Llamar funcion con lista de argumentos\n")
  cat("    · what: (funcion, requerido) Ej: rbind.\n")
  cat("    · args: (lista, requerido) Lista de argumentos para what.\n")
  cat("    · Util: do.call(rbind, lista_de_dfs) une varios df por filas.\n\n")

  cat("76. paste0(...) — Concatenar sin separador\n")
  cat("    · ...: (strings, requerido) Equivale a paste(..., sep='').\n")
  cat("    · Util para crear nombres de archivo: paste0('sample_', 1:3, '.csv')\n\n")

  cat("77. anyNA(x) / nchar(x) / gregexpr(pattern, x)\n")
  cat("    · anyNA(x): (vector, requerido) TRUE si hay algun NA (mas corto que any(is.na())).\n")
  cat("    · nchar(x): (character, requerido) Longitud de cada string (R Base).\n")
  cat("    · gregexpr(p, x): posiciones de TODOS los matches de regex.\n\n")

  cat("78. exp(x) / log(x) — Transformaciones matematicas\n")
  cat("    · exp(x): e^x (inverso de log natural).\n")
  cat("    · log(x): logaritmo natural.\n")
  cat("    · Util para normalizar datos o interpretar variables transformadas.\n\n")

  cat("79. if_all(.cols, .fns) / if_any(.cols, .fns) — Filtrar por columnas\n")
  cat("    · if_all(ex, ~!is.na(.x)): filas donde TODAS las columnas no son NA.\n")
  cat("    · if_any(starts_with('spp'), ~.x > 0): filas donde ALGUNA columna > 0.\n")
  cat("    · Se usan DENTRO de filter().\n\n")

  cat("80. complete.cases(x) / row.names(x) / distinct(x)\n")
  cat("    · distinct(x): filas unicas (elimina duplicados).\n")
  cat("    · row.names(x): obtener o asignar nombres de fila.\n\n")

  cat("81. quantile(x, probs, na.rm) — Percentiles\n")
  cat("    · x: (numeric, requerido).\n")
  cat("    · probs: (numeric, requerido) Percentil deseado (0-1).\n")
  cat("    · na.rm: (logical, opcional) TRUE ignora NAs.\n\n")

  cat("======================================================================\n")
  cat("  FIN DE LA GUIA — 81 TEMAS CUBIERTOS\n")
  cat("  Formato: funcion(parametros) — descripcion\n")
  cat("  · parametro: (tipo, requerido/opcional) — explicacion\n")
  cat("======================================================================\n")
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
  cat("  function_registry()     - Guia completa (81 temas)\n")
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
