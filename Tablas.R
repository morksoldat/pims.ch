#library(table1)
##library(dplyr)
library(tableone)

#Tabla 1 demograficos.
#table1(data=data, ~ genero.factor + edad_meses + covid_contacto.factor + comorb___0.factor +  comorb___1.factor + comorb___2.factor +
#         comorb___3.factor + comorb___4.factor + comorb___5.factor + comorb___6.factor + comorb___7.factor +
#         comorb___8.factor + comorb___9.factor + comorb___10.factor + comorb___11.factor +
#         comorb___12.factor + comorb___13.factor + comorb___99.factor, overall = "Total", droplevels = T, 
#       caption = "Tabla 1: Demográfico y comorbilidades", footnote = "Se dejan valores con 0 casos hasta tener todos los datos")

#Tabla 1 demograficos con tableone.
## Lista de variables
vars1 <- c("genero.factor", "edad_meses", "covid_contacto.factor", "comorb___0.factor", "comorb___1.factor", "comorb___2.factor",
                  "comorb___3.factor", "comorb___4.factor", "comorb___5.factor", "comorb___6.factor", "comorb___7.factor", 
                  "comorb___8.factor", "comorb___9.factor", "comorb___10.factor", "comorb___11.factor", "comorb___12.factor",
                "comorb___13.factor", "comorb___99.factor")


## Crea tabla 1
tabla1.1 <- CreateTableOne(vars = vars1, data = data)
tabla1 <- CreateTableOne(vars = vars1, data = data, strata = "unidad.factor2")
#print(tabla1, varLabels =T, cramVars = "genero.factor", dropEqual = T)
#summary(tabla1$ContTable)

# Tabla 2 síntomas
vars2 <- c("fiebre.factor", "coriza.factor", "tos.factor", "cafalea.factor", "irritabilidad.factor",
           "odinofagia.factor", "vomitos.factor", "diarrea.factor", "dolor_abd.factor", "mialgias.factor",
           "disnea.factor")

tabla2.1 <- CreateTableOne(vars = vars2, data = data)
tabla2 <- CreateTableOne(vars = vars2, data = data, strata = "unidad.factor2")
#print(tabla2, varLabels =T)

# Tabla 3 signos vitales al ingreso
vars3 <- c("fiebre_ing_temp", "sat_ing", "fc_ing", "pa_sist_ing", "pa_diast_ing", "fr_ing", "ex_pylm_alt.factor",
           "sibilancias_ing.factor", "crepitos_ing.factor", "ex_cardio_ing.factor", "ex_abd_alt_ing.factor")
vars3n <- c("fiebre_ing_temp", "sat_ing", "fc_ing", "pa_sist_ing", "pa_diast_ing", "fr_ing")

tabla3.1 <- CreateTableOne(vars = vars3, data = data)
tabla3 <- CreateTableOne(vars = vars3, data = data, strata = "unidad.factor2")
#print(tabla3, varLabels =T)
#summary(tabla3$ContTable)
#summary(tabla3$CatTable)

# Tabla 4 laboratorio
#table1(data=data, ~ ing_hemoglobina + ing_rcto_blancos + ing_rcto_linfocitos + ing_rcto_segmentados + 
#         ing_rcto_plaquetas + ing_vhs + ing_proteina_c_reactiva + ing_glicemia + ing_gpt + ing_got + ing_ggt +
#         ing_fa + ing_bili_tot + ing_albumina + ing_ldh + ing_creatinina + ing_bun + ing_ck + ing_ck_mb +
#         ing_trigliceridos + ing_dimero_d + ing_lactato + ing_ferritina + ing_ph + ing_na + ing_k)

vars4 <- c("ing_hemoglobina", "ing_rcto_blancos", "ing_rcto_linfocitos","ing_rcto_segmentados", 
             "ing_rcto_plaquetas","ing_vhs","ing_proteina_c_reactiva","ing_glicemia","ing_gpt","ing_got",
             "ing_ggt","ing_fa","ing_bili_tot","ing_albumina","ing_ldh","ing_creatinina","ing_bun","ing_ck",
             "ing_ck_mb","ing_trigliceridos","ing_dimero_d","ing_lactato","ing_ferritina","ing_ph","ing_na","ing_k")

tabla4.1 <- CreateTableOne(vars = vars4, data = data)
tabla4 <- CreateTableOne(vars = vars4, data = data, strata = "unidad.factor2")
#kableone(print(tabla4, varLabels =T, nonnormal = vars4))
#summary(tabla4$ContTable)

## Tabla 6, peor exámen

vars6 <- c("hemoglobina", "rcto_blancos", "rcto_linfocitos","rcto_segmentados", 
           "rcto_plaquetas","vhs","proteina_c_reactiva","glicemia","gpt","got",
           "ggt","fa","bili_tot","albumina","ldh","creatinina","bun","ck",
           "ck_mb","trigliceridos","dimero_d","lactato","ferritina","ph","na","k")

tabla6.1 <- CreateTableOne(vars = vars6, data = data)
tabla6 <- CreateTableOne(vars = vars6, data = data, strata = "unidad.factor2")

## Datos PIMS
vars5 <- c("exantema", "adenopatías", "edema.extremidades", "conjuntivitis", "compr.mucosas", "convulsion")
tabla5 <- CreateTableOne(vars = vars5, data = gdata)
#print(tabla5)
