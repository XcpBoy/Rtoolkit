#' @export
madeupex <- function() {
  cat("====================================================================\n")
  cat(" 1. VECTORES Y OPERACIONES BASICAS\n")
  cat("====================================================================\n\n")

  cat("--- c(): crear vectores ---\n")
  cat("edades <- c(22, 19, 25, 21, 23)\n")
  cat("nombres <- c('Ana', 'Luis', 'Pedro', 'Sara', 'Mia')\n\n")

  cat("--- names(): etiquetar elementos ---\n")
  cat("names(edades) <- nombres\n")
  cat("edades\n")
  cat("# Resultado:\n")
  cat("#  Ana  Luis Pedro  Sara   Mia\n")
  cat("#   22    19    25    21    23\n\n")

  cat("--- seq(): secuencias ---\n")
  cat("seq(0, 20, by = 5)   # 0, 5, 10, 15, 20\n\n")

  cat("--- length() y class() ---\n")
  cat("length(edades)  # 5\n")
  cat("class(nombres)  # 'character'\n\n")

  cat("--- Operadores logicos ---\n")
  cat("edades > 21\n")
  cat("edades[edades > 21]   # filtrar vector por condicion\n\n")

  cat("--- %%in%% ---\n")
  cat("c('Ana', 'Luna') %in% nombres  # TRUE FALSE\n\n")

  cat("--- mean(), summary() ---\n")
  cat("mean(edades)\n")
  cat("summary(edades)\n\n")

  cat("====================================================================\n")
  cat(" 2. DATAFRAMES: CREAR, EXPLORAR, ACCEDER\n")
  cat("====================================================================\n\n")

  cat("--- data.frame() ---\n")
  cat("df <- data.frame(\n")
  cat("  nombre = c('Ana', 'Luis', 'Pedro'),\n")
  cat("  edad   = c(22, 19, 25),\n")
  cat("  ciudad = c('Cali', 'Bogota', 'Medellin'),\n")
  cat("  stringsAsFactors = FALSE\n")
  cat(")\n\n")

  cat("--- str(), glimpse(), head() ---\n")
  cat("str(df)\n")
  cat("glimpse(df)\n\n")

  cat("--- $ y [[]] ---\n")
  cat("df$edad          # 22 19 25\n")
  cat("df[['ciudad']]   # 'Cali' 'Bogota' 'Medellin'\n\n")

  cat("--- [] para subconjuntos ---\n")
  cat("df[1:2, ]               # primeras 2 filas\n")
  cat("df[, c('nombre','edad')] # columnas especificas\n")
  cat("df[2, 3]                # celda exacta: fila 2, columna 3\n\n")

  cat("--- Convertir character a factor (tidyverse) ---\n")
  cat("df <- df %>% mutate(across(where(is.character), as.factor))\n\n")

  cat("--- Convertir character a factor (R Base) ---\n")
  cat("df <- as.data.frame(lapply(df, function(x)\n")
  cat("  if (is.character(x)) as.factor(x) else x))\n\n")

  cat("====================================================================\n")
  cat(" 3. DPLYR: SELECT, RENAME, RELOCATE\n")
  cat("====================================================================\n\n")

  cat("--- select(): elegir columnas ---\n")
  cat("diamonds %>% select(carat, cut, price)\n\n")

  cat("--- select() con starts_with() ---\n")
  cat("diamonds %>% select(starts_with('c'))\n\n")

  cat("--- select() con where() ---\n")
  cat("diamonds %>% select(where(is.numeric))\n\n")

  cat("--- select() con contains() ---\n")
  cat("diamonds %>% select(contains('p'))\n\n")

  cat("--- rename(): cambiar nombres ---\n")
  cat("diamonds %>% rename(quilates = carat, coloracion = color)\n\n")

  cat("--- relocate(): reordenar columnas ---\n")
  cat("diamonds %>% relocate(price, .before = carat)\n")
  cat("diamonds %>% relocate(table, .after = last_col())\n\n")

  cat("====================================================================\n")
  cat(" 4. DPLYR: FILTER, ARRANGE, SLICE, COUNT\n")
  cat("====================================================================\n\n")

  cat("--- filter() simple ---\n")
  cat("diamonds %>% filter(cut == 'Ideal', price < 500)\n\n")

  cat("--- filter() con %%in%% ---\n")
  cat("diamonds %>% filter(color %in% c('D', 'E', 'F'))\n\n")

  cat("--- filter() con !is.na() ---\n")
  cat("diamonds %>% filter(!is.na(table))\n\n")

  cat("--- arrange() ---\n")
  cat("diamonds %>% arrange(desc(price))          # mas caros primero\n")
  cat("diamonds %>% arrange(cut, desc(price))     # jerarquico\n\n")

  cat("--- slice() / slice_max() / slice_min() ---\n")
  cat("diamonds %>% slice(1:3)                          # primeras 3 filas\n")
  cat("diamonds %>% slice_max(price, n = 5)              # 5 mas caros\n")
  cat("diamonds %>% slice_min(carat, n = 3)              # 3 mas pequenos\n\n")

  cat("--- count() ---\n")
  cat("diamonds %>% count(cut)\n")
  cat("diamonds %>% count(cut, color)  # combinaciones\n\n")

  cat("====================================================================\n")
  cat(" 5. DPLYR: MUTATE (CREAR COLUMNAS)\n")
  cat("====================================================================\n\n")

  cat("--- mutate(): operacion matematica ---\n")
  cat("diamonds %>% mutate(precio_venta = price * 1.19)\n\n")

  cat("--- mutate(): proporcion ---\n")
  cat("diamonds %>% mutate(volumen = x * y * z)\n\n")

  cat("--- mutate(): diferencia con el promedio ---\n")
  cat("diamonds %>% mutate(dif_precio = price - mean(price, na.rm = TRUE))\n\n")

  cat("--- mutate(): combinar texto con paste() ---\n")
  cat("diamonds %>% mutate(id_unico = paste(cut, color, clarity, sep = '-'))\n\n")

  cat("====================================================================\n")
  cat(" 6. DPLYR: GROUP_BY + SUMMARISE\n")
  cat("====================================================================\n\n")

  cat("--- summarise() global ---\n")
  cat("diamonds %>% summarise(precio_prom = mean(price), n = n())\n\n")

  cat("--- group_by + summarise basico ---\n")
  cat("diamonds %>%\n")
  cat("  group_by(cut) %>%\n")
  cat("  summarise(precio_prom = mean(price), n = n())\n\n")

  cat("--- across() con list() - varias columnas, varias funciones ---\n")
  cat("diamonds %>%\n")
  cat("  group_by(cut) %>%\n")
  cat("  summarise(across(\n")
  cat("    c(carat, price),\n")
  cat("    list(prom = ~mean(.x), min = ~min(.x), max = ~max(.x))\n")
  cat("  ))\n\n")

  cat("--- across() con where() - todas las numericas ---\n")
  cat("diamonds %>%\n")
  cat("  group_by(cut) %>%\n")
  cat("  summarise(across(where(is.numeric), ~mean(.x, na.rm = TRUE)))\n\n")

  cat("--- n_distinct() dentro de summarise() ---\n")
  cat("diamonds %>%\n")
  cat("  group_by(cut) %>%\n")
  cat("  summarise(colores_distintos = n_distinct(color))\n\n")

  cat("--- pull(): extraer columna como vector ---\n")
  cat("precio_max <- diamonds %>%\n")
  cat("  filter(cut == 'Ideal') %>%\n")
  cat("  slice_max(price, n = 1) %>%\n")
  cat("  pull(price)\n")
  cat("precio_max  # valor unico\n\n")

  cat("====================================================================\n")
  cat(" 7. CONDICIONALES: IFELSE, CASE_WHEN\n")
  cat("====================================================================\n\n")

  cat("--- ifelse() vectorizado ---\n")
  cat("x <- c(5, -3, 0, 8, -1)\n")
  cat("ifelse(x > 0, 'positivo', 'negativo o cero')\n\n")

  cat("--- ifelse() anidado ---\n")
  cat("ifelse(x > 0, 'pos', ifelse(x < 0, 'neg', 'cero'))\n\n")

  cat("--- case_when() - categorias multiples ---\n")
  cat("df <- data.frame(nota = c(95, 82, 67, 45, 30))\n")
  cat("df <- df %>%\n")
  cat("  mutate(categoria = case_when(\n")
  cat("    nota >= 90 ~ 'A',\n")
  cat("    nota >= 80 ~ 'B',\n")
  cat("    nota >= 70 ~ 'C',\n")
  cat("    nota >= 60 ~ 'D',\n")
  cat("    TRUE       ~ 'F'\n")
  cat("  ))\n\n")

  cat("--- case_when() + TRUE como else universal ---\n")
  cat("df %>% mutate(resultado = case_when(\n")
  cat("  nota >= 60 ~ 'Aprueba',\n")
  cat("  TRUE       ~ 'Pierde'\n")
  cat("))\n\n")

  cat("--- quantile() - percentiles ---\n")
  cat("quantile(diamonds$price, 0.75)       # percentil 75\n")
  cat("quantile(diamonds$price, c(0.25, 0.75))  # Q1 y Q3\n\n")

  cat("====================================================================\n")
  cat(" 8. JOINS: COMBINAR TABLAS\n")
  cat("====================================================================\n\n")

  cat("--- Datos de ejemplo ---\n")
  cat("clientes <- data.frame(id = 1:4, nombre = c('Ana','Luis','Pedro','Sara'))\n")
  cat("compras  <- data.frame(id = c(1, 1, 3, 5), producto = c('Zapato','Bolso','Camisa','Gorra'))\n\n")

  cat("--- left_join(): TODO de izquierda + lo que coincida de derecha ---\n")
  cat("left_join(clientes, compras, by = 'id')\n")
  cat("# Ana aparece 2 veces (2 compras), Pedro 1 vez, Sara 0 (NA)\n\n")

  cat("--- inner_join(): SOLO lo que coincide en ambas ---\n")
  cat("inner_join(clientes, compras, by = 'id')\n")
  cat("# Solo Ana (id 1) y Pedro (id 3)\n\n")

  cat("--- full_join(): TODO de ambas ---\n")
  cat("full_join(clientes, compras, by = 'id')\n\n")

  cat("--- anti_join(): filas de izquierda SIN match en derecha ---\n")
  cat("anti_join(clientes, compras, by = 'id')\n")
  cat("# Devuelve a Sara (id 4) - no compro nada\n\n")

  cat("--- coalesce(): unir columnas duplicadas post-join ---\n")
  cat("df_join <- left_join(\n")
  cat("  clientes, compras, by = 'id')\n")
  cat("df_join %>% mutate(nombre_final = coalesce(nombre.x, nombre.y))\n\n")

  cat("====================================================================\n")
  cat(" 9. PIVOT: TRANSFORMAR TABLAS (LARGO / ANCHO)\n")
  cat("====================================================================\n\n")

  cat("--- pivot_longer(): de ancho a largo ---\n")
  cat("df_ancho <- data.frame(\n")
  cat("  sitio = c('A', 'B'),\n")
  cat("  enero = c(10, 15),\n")
  cat("  feb   = c(12, 18),\n")
  cat("  mar   = c(14, 20)\n")
  cat(")\n")
  cat("df_ancho %>%\n")
  cat("  pivot_longer(cols = c(enero, feb, mar),\n")
  cat("               names_to = 'mes',\n")
  cat("               values_to = 'temp')\n\n")

  cat("--- pivot_wider(): de largo a ancho ---\n")
  cat("df_largo <- data.frame(\n")
  cat("  sitio = rep(c('A', 'B'), each = 3),\n")
  cat("  mes = rep(c('Ene', 'Feb', 'Mar'), 2),\n")
  cat("  valor = c(10, 12, 14, 15, 18, 20)\n")
  cat(")\n")
  cat("df_largo %>%\n")
  cat("  pivot_wider(names_from = mes, values_from = valor)\n\n")

  cat("--- separate(): dividir una columna en dos ---\n")
  cat("df <- data.frame(especie = c('Homo_sapiens', 'Mus_musculus'))\n")
  cat("df %>% separate(especie, into = c('genero', 'epiteto'), sep = '_')\n\n")

  cat("====================================================================\n")
  cat(" 10. NAS: DETECTAR, ELIMINAR, REEMPLAZAR\n")
  cat("====================================================================\n\n")

  cat("--- Datos con NA ---\n")
  cat("df_na <- data.frame(x = c(1, NA, 3, NA, 5), y = c('a','b',NA,'d','e'))\n\n")

  cat("--- is.na(): detectar ---\n")
  cat("is.na(df_na$x)\n")
  cat("sum(is.na(df_na))   # total de NAs en todo el df\n\n")

  cat("--- which(is.na()): indices de los NAs ---\n")
  cat("which(is.na(df_na$x))   # 2, 4\n\n")

  cat("--- drop_na(): eliminar filas con NA ---\n")
  cat("df_na %>% drop_na()          # solo filas sin NINGUN NA\n")
  cat("df_na %>% drop_na(x)         # solo si x tiene NA\n\n")

  cat("--- replace_na(): reemplazar ---\n")
  cat("df_na %>% mutate(x = replace_na(x, 0))\n\n")

  cat("--- Con promedio: primero calcular, luego reemplazar ---\n")
  cat("media_x <- mean(df_na$x, na.rm = TRUE)\n")
  cat("df_na %>% mutate(x = replace_na(x, media_x))\n\n")

  cat("--- Reemplazo directo con which() ---\n")
  cat("df_na$x[which(is.na(df_na$x))] <- 99\n")
  cat("df_na\n\n")

  cat("====================================================================\n")
  cat(" 11. OPERACIONES POR FILA\n")
  cat("====================================================================\n\n")

  cat("--- rowSums(): sumar por fila (R Base) ---\n")
  cat("df_spp <- data.frame(spp1 = c(1, 0, 1), spp2 = c(0, 1, 1), spp3 = c(1, 1, 0))\n")
  cat("df_spp %>% mutate(total = rowSums(select(., starts_with('spp'))))\n\n")

  cat("--- rowwise() + c_across(): CUALQUIER funcion por fila ---\n")
  cat("df_spp %>%\n")
  cat("  rowwise() %>%\n")
  cat("  mutate(\n")
  cat("    total = sum(c_across(starts_with('spp'))),\n")
  cat("    media = mean(c_across(everything()))\n")
  cat("  ) %>%\n")
  cat("  ungroup()\n\n")

  cat("====================================================================\n")
  cat(" 12. FUNCIONES PROPIAS\n")
  cat("====================================================================\n\n")

  cat("--- Funcion simple: IMC ---\n")
  cat("imc <- function(peso_kg, altura_m) {\n")
  cat("  peso_kg / (altura_m^2)\n")
  cat("}\n")
  cat("imc(70, 1.75)   # 22.86\n\n")

  cat("--- Funcion con cat() como salida ---\n")
  cat("propina <- function(total) {\n")
  cat("  diez <- total * 0.10\n")
  cat("  quince <- total * 0.15\n")
  cat("  cat('Minima:', diez, '| Generosa:', quince)\n")
  cat("}\n")
  cat("propina(45000)\n\n")

  cat("--- Funcion con manejo de NA ---\n")
  cat("promedio_pers <- function(x) {\n")
  cat("  suma <- sum(x, na.rm = TRUE)\n")
  cat("  n <- length(x[!is.na(x)])\n")
  cat("  suma / n\n")
  cat("}\n")
  cat("promedio_pers(c(10, 20, NA, 30, 40))  # 25\n\n")

  cat("====================================================================\n")
  cat(" 13. LOOPS (FOR, WHILE)\n")
  cat("====================================================================\n\n")

  cat("--- for loop basico ---\n")
  cat("for (i in 1:5) {\n")
  cat("  cat('Iteracion', i, '\\n')\n")
  cat("}\n\n")

  cat("--- for loop con pre-allocation (eficiente) ---\n")
  cat("n <- 10\n")
  cat("resultados <- numeric(n)\n")
  cat("for (i in 1:n) {\n")
  cat("  resultados[i] <- i^2\n")
  cat("}\n")
  cat("resultados  # 1, 4, 9, 16, ..., 100\n\n")

  cat("--- for loop sobre nombres de un vector ---\n")
  cat("datos <- c(ana = 25, luis = 30, pedro = 22)\n")
  cat("for (nom in names(datos)) {\n")
  cat("  cat(nom, 'tiene', datos[nom], 'anos\\n')\n")
  cat("}\n\n")

  cat("--- while loop ---\n")
  cat("contador <- 1\n")
  cat("while (contador <= 5) {\n")
  cat("  cat('Contador:', contador, '\\n')\n")
  cat("  contador <- contador + 1\n")
  cat("}\n\n")

  cat("====================================================================\n")
  cat(" 14. STRINGS Y EXPRESIONES REGULARES\n")
  cat("====================================================================\n\n")

  cat("--- Datos de ejemplo ---\n")
  cat("textos <- c('Homo sapiens', 'Mus musculus', 'Drosophila melanogaster')\n\n")

  cat("--- str_length(): longitud ---\n")
  cat("str_length(textos)  # 12, 12, 24\n\n")

  cat("--- str_detect(): contiene patron? ---\n")
  cat("str_detect(textos, 'mus')\n")
  cat("str_detect(textos, regex('MUS', ignore_case = TRUE))  # sin distincion mayus/min\n\n")

  cat("--- str_count(): cuantas veces aparece ---\n")
  cat("str_count(textos, 'a')\n\n")

  cat("--- str_extract(): extraer primer match ---\n")
  cat("str_extract(textos, '[A-Z][a-z]+')   # primera palabra\n")
  cat("str_extract(textos, '[a-z]+$')       # ultima palabra\n\n")

  cat("--- str_replace(): reemplazar texto ---\n")
  cat("str_replace(textos, ' ', ' | ')       # espacio por barra\n\n")

  cat("--- str_sub(): extraer por posicion ---\n")
  cat("str_sub(textos, 1, 6)   # primeros 6 caracteres\n\n")

  cat("--- Regex: clases [^ATGC] para ADN ---\n")
  cat("secs <- c('ATCGAT', 'ATC-NN', 'ATCGAT', 'ATCG12')\n")
  cat("str_detect(secs, '[^ATCG]')           # detecta NO-ADN\n")
  cat("str_count(secs, '[^ATCG]')            # cuenta caracteres invalidos\n\n")

  cat("--- Regex: anclas ^ (inicio) y $ (final) ---\n")
  cat("orfs <- c('ATGCGATCGTAA', 'ATGCGATCG', 'GCTAGCTAGTGA')\n")
  cat("str_detect(orfs, '^ATG')              # empieza con ATG?\n")
  cat("str_detect(orfs, '(TAA|TAG|TGA)$')    # termina con codon stop?\n")
  cat("str_detect(orfs, '^ATG.*(TAA|TAG|TGA)$')  # ORF completo\n\n")

  cat("--- Regex: cuantificadores ---\n")
  cat("str_view(c('AAAAA', 'AATA', 'AAA'), 'A{3,}')\n")
  cat("str_extract_all('ATGATGAAA', '[ATCG]{3}')  # todos los codones\n\n")

  cat("--- Regex: lookbehind (?<=...) ---\n")
  cat("accesiones <- c('NM_007294.4', 'AF213260.1', 'KX369547')\n")
  cat("str_extract(accesiones, '(?<=\\\\.)\\\\d+$')  # version despues del punto\n\n")

  cat("--- str_match(): grupos de captura ---\n")
  cat("str_match(accesiones, '^([A-Z]+)_?([0-9]+)')\n\n")

  cat("====================================================================\n")
  cat(" 15. GGPLOT2: VISUALIZACION\n")
  cat("====================================================================\n\n")

  cat("--- Disperion: geom_point() ---\n")
  cat("ggplot(diamonds %>% sample_n(500),\n")
  cat("       aes(x = carat, y = price, color = cut)) +\n")
  cat("  geom_point(alpha = 0.5) +\n")
  cat("  labs(title = 'Precio vs Quilates')\n\n")

  cat("--- Barras (conteo): geom_bar() ---\n")
  cat("ggplot(diamonds, aes(x = cut, fill = cut)) +\n")
  cat("  geom_bar() +\n")
  cat("  labs(title = 'Cantidad por corte')\n\n")

  cat("--- Boxplot: geom_boxplot() ---\n")
  cat("ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +\n")
  cat("  geom_boxplot() +\n")
  cat("  labs(title = 'Distribucion de precios por corte')\n\n")

  cat("--- Columnas con valor pre-calculado: geom_col() ---\n")
  cat("diamonds %>%\n")
  cat("  group_by(cut) %>%\n")
  cat("  summarise(precio_prom = mean(price)) %>%\n")
  cat("  ggplot(aes(x = fct_reorder(cut, precio_prom), y = precio_prom, fill = cut)) +\n")
  cat("  geom_col() +\n")
  cat("  labs(x = 'Corte', y = 'Precio promedio')\n\n")

  cat("--- Facetas: facet_wrap() ---\n")
  cat("ggplot(diamonds %>% sample_n(1000),\n")
  cat("       aes(x = carat, y = price)) +\n")
  cat("  geom_point(alpha = 0.3) +\n")
  cat("  facet_wrap(~ cut)\n\n")

  cat("--- Linea de regresion: geom_smooth() ---\n")
  cat("ggplot(diamonds %>% sample_n(500),\n")
  cat("       aes(x = carat, y = price)) +\n")
  cat("  geom_point(alpha = 0.3) +\n")
  cat("  geom_smooth(method = 'lm') +\n")
  cat("  labs(title = 'Regresion lineal')\n\n")

  cat("--- Pie chart: coord_polar() ---\n")
  cat("diamonds %>%\n")
  cat("  count(cut) %>%\n")
  cat("  mutate(prop = n / sum(n)) %>%\n")
  cat("  ggplot(aes(x = '', y = prop, fill = cut)) +\n")
  cat("  geom_col() +\n")
  cat("  coord_polar(theta = 'y')\n\n")

  cat("--- Temas y rotacion de etiquetas ---\n")
  cat("ggplot(diamonds, aes(x = color, fill = color)) +\n")
  cat("  geom_bar() +\n")
  cat("  theme_minimal() +\n")
  cat("  theme(axis.text.x = element_text(angle = 45, hjust = 1))\n\n")

  cat("--- Eje Y en escala log ---\n")
  cat("ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +\n")
  cat("  geom_boxplot() +\n")
  cat("  scale_y_log10()\n\n")

  cat("====================================================================\n")
  cat(" 16. LIMPIEZA DE DATOS\n")
  cat("====================================================================\n\n")

  cat("--- Identificar columnas sin variabilidad ---\n")
  cat("df_ej <- data.frame(a = 1:5, b = rep('X', 5), c = c(NA, NA, NA, NA, NA))\n")
  cat("df_ej %>%\n")
  cat("  summarise(across(everything(), ~ n_distinct(., na.rm = FALSE))) %>%\n")
  cat("  pivot_longer(everything(), names_to = 'col', values_to = 'vals_unicos')\n\n")

  cat("--- Eliminar columnas completamente vacias ---\n")
  cat("df_ej[, colSums(is.na(df_ej)) < nrow(df_ej)]\n\n")

  cat("--- Eliminar filas duplicadas ---\n")
  cat("df_dup <- data.frame(x = c(1, 1, 2, 3), y = c('a', 'a', 'b', 'c'))\n")
  cat("df_dup[!duplicated(df_dup), ]\n\n")

  cat("====================================================================\n")
  cat(" 17. AGGREGATE() - R BASE (ALTERNATIVA A GROUP_BY)\n")
  cat("====================================================================\n\n")

  cat("--- aggregate() con formula ---\n")
  cat("aggregate(price ~ cut, data = diamonds, FUN = mean)\n\n")

  cat("--- aggregate() con dos variables de agrupacion ---\n")
  cat("aggregate(price ~ cut + color, data = diamonds, FUN = mean)\n\n")

  cat("--- aggregate() sin formula ---\n")
  cat("aggregate(diamonds$price, list(corte = diamonds$cut), FUN = mean)\n\n")

  cat("====================================================================\n")
  cat(" 18. COMBINACIONES PODEROSAS (PIPES MULTI-PASO)\n")
  cat("====================================================================\n\n")

  cat("--- filter + group_by + summarise + arrange ---\n")
  cat("diamonds %>%\n")
  cat("  filter(color %in% c('D', 'E')) %>%\n")
  cat("  group_by(cut, color) %>%\n")
  cat("  summarise(precio_prom = mean(price), n = n()) %>%\n")
  cat("  arrange(desc(precio_prom))\n\n")

  cat("--- mutate + case_when + group_by + count ---\n")
  cat("mtcars %>%\n")
  cat("  mutate(peso_cat = case_when(\n")
  cat("    wt < 2.5 ~ 'liviano',\n")
  cat("    wt < 3.5 ~ 'medio',\n")
  cat("    TRUE     ~ 'pesado'\n")
  cat("  )) %>%\n")
  cat("  group_by(cyl, peso_cat) %>%\n")
  cat("  count()\n\n")

  cat("--- pivot_longer + ggplot (serie temporal) ---\n")
  cat("df_ancho %>%\n")
  cat("  pivot_longer(cols = -sitio, names_to = 'mes', values_to = 'temp') %>%\n")
  cat("  ggplot(aes(x = mes, y = temp, color = sitio, group = sitio)) +\n")
  cat("  geom_line() +\n")
  cat("  geom_point()\n\n")

  cat("--- join + mutate + filter: clientes que gastaron mas del promedio ---\n")
  cat("compras <- data.frame(\n")
  cat("  id = c(1, 1, 2, 3, 3, 3),\n")
  cat("  monto = c(100, 50, 200, 30, 80, 120)\n")
  cat(")\n")
  cat("gasto_cliente <- compras %>%\n")
  cat("  group_by(id) %>%\n")
  cat("  summarise(total = sum(monto))\n")
  cat("prom <- mean(gasto_cliente$total)\n")
  cat("gasto_cliente %>%\n")
  cat("  filter(total > prom) %>%\n")
  cat("  left_join(clientes, by = 'id')\n\n")

  cat("============================================================================\n")
  cat("  FIN DE LOS DEMOS - 18 SECCIONES CUBIERTAS\n")
  cat("============================================================================\n")
}
