#CARREGANDO PACOTES NECESÁRIOS PARA AS ANÁLISES
library(ggplot2)
library(dplyr)
library(readr)
library(readxl)
library(openxlsx)
library(gridExtra)
library(tidyverse)
library(cowplot)
library(ggthemes)


##CARREGANDO BASE DE DADOS DOS CURSOS DA UFRN
cursos_de_graduacao <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/cursos-de-graduacao.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )


##SELECIONANDO AS VARIAVEIS DE INTERESSE
cursos_de_graduacao <- cursos_de_graduacao %>%
  select(id_curso, nome,grau_academico,modalidade_educacao,area_conhecimento,municipio,unidade_responsavel)





##CARREGANDO DADOS DAS MATRICUALS 
##2013.1
matriculas_2013_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20131.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

##SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2013_1 <- matriculas_2013_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2013_1$semestre <- "2013.1"

##SELECIONANDO OS VALORES UNICOS
matriculas_2013_1 <- unique(matriculas_2013_1)

##2013.2
matriculas_2013_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20132.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

##SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2013_2 <- matriculas_2013_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2013_2$semestre <- "2013.2"

##SELECIONANDO OS VALORES UNICOS
matriculas_2013_2 <- unique(matriculas_2013_2)


##2014.1
matriculas_2014_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20141.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

##SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2014_1 <- matriculas_2014_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2014_1$semestre <- "2014.1"

##SELECIONANDO OS VALORES UNICOS
matriculas_2014_1 <- unique(matriculas_2014_1)

##2014.2
matriculas_2014_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20142.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

##SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2014_2 <- matriculas_2014_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2014_2$semestre <- "2014.2"

##SELECIONANDO OS VALORES UNICOS
matriculas_2014_2 <- unique(matriculas_2014_2)


## 2015.1
matriculas_2015_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20151.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2015_1 <- matriculas_2015_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2015_1$semestre <- "2015.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2015_1 <- unique(matriculas_2015_1)

## 2015.2
matriculas_2015_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20152.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2015_2 <- matriculas_2015_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2015_2$semestre <- "2015.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2015_2 <- unique(matriculas_2015_2)

## 2016.1
matriculas_2016_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20161.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2016_1 <- matriculas_2016_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2016_1$semestre <- "2016.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2016_1 <- unique(matriculas_2016_1)

## 2016.2
matriculas_2016_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20162.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2016_2 <- matriculas_2016_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2016_2$semestre <- "2016.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2016_2 <- unique(matriculas_2016_2)

## 2017.1
matriculas_2017_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20171.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2017_1 <- matriculas_2017_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2017_1$semestre <- "2017.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2017_1 <- unique(matriculas_2017_1)

## 2017.2
matriculas_2017_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20172.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2017_2 <- matriculas_2017_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2017_2$semestre <- "2017.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2017_2 <- unique(matriculas_2017_2)

## 2018.1
matriculas_2018_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20181.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2018_1 <- matriculas_2018_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2018_1$semestre <- "2018.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2018_1 <- unique(matriculas_2018_1)

## 2018.2
matriculas_2018_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20182.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2018_2 <- matriculas_2018_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2018_2$semestre <- "2018.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2018_2 <- unique(matriculas_2018_2)

## 2019.1
matriculas_2019_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20191.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2019_1 <- matriculas_2019_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2019_1$semestre <- "2019.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2019_1 <- unique(matriculas_2019_1)

## 2019.2
matriculas_2019_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20192.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2019_2 <- matriculas_2019_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2019_2$semestre <- "2019.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2019_2 <- unique(matriculas_2019_2)


## 2020.1
matriculas_2020_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20201.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2020_1 <- matriculas_2020_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2020_1$semestre <- "2020.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2020_1 <- unique(matriculas_2020_1)

## 2020.2
matriculas_2020_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20202.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2020_2 <- matriculas_2020_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2020_2$semestre <- "2020.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2020_2 <- unique(matriculas_2020_2)

##2020.5
matriculas_2020_5 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20205.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2020_5 <- matriculas_2020_5 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2020_5$semestre <- "2020.5"

## SELECIONANDO OS VALORES UNICOS
matriculas_2020_5 <- unique(matriculas_2020_5)


##2020.6
matriculas_2020_6 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20206.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2020_6 <- matriculas_2020_6 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2020_6$semestre <- "2020.6"

## SELECIONANDO OS VALORES UNICOS
matriculas_2020_6 <- unique(matriculas_2020_6)


## 2021.1
matriculas_2021_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20211.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2021_1 <- matriculas_2021_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2021_1$semestre <- "2021.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2021_1 <- unique(matriculas_2021_1)

## 2021.2
matriculas_2021_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20212.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2021_2 <- matriculas_2021_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2021_2$semestre <- "2021.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2021_2 <- unique(matriculas_2021_2)

## 2022.1
matriculas_2022_1 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20221.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2022_1 <- matriculas_2022_1 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2022_1$semestre <- "2022.1"

## SELECIONANDO OS VALORES UNICOS
matriculas_2022_1 <- unique(matriculas_2022_1)

## 2022.2
matriculas_2022_2 <-
  read_delim(
    "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matricula-componente-20222.csv",
    delim = ";",
    escape_double = FALSE,
    trim_ws = TRUE
  )

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2022_2 <- matriculas_2022_2 %>%
  select(id_turma, id_curso, discente, media_final, descricao)

matriculas_2022_2$semestre <- "2022.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2022_2 <- unique(matriculas_2022_2)










# Colocando todos os dataframes em uma lista
lista_matriculas <- list(
  matriculas_2013_1, matriculas_2013_2, matriculas_2014_1, matriculas_2014_2,
  matriculas_2015_1, matriculas_2015_2, matriculas_2016_1, matriculas_2016_2,
  matriculas_2017_1, matriculas_2017_2, matriculas_2018_1, matriculas_2018_2,
  matriculas_2019_1, matriculas_2019_2, matriculas_2020_1, matriculas_2020_2,
  matriculas_2020_5, matriculas_2020_6, matriculas_2021_1, matriculas_2021_2,
  matriculas_2022_1, matriculas_2022_2
)

# Combinando todos os dataframes em um único dataframe de valores unicos
matriculas_total <- do.call(rbind, lista_matriculas)
matriculas_total <- unique(matriculas_total)

#Salvando o arquivo final compilado de todos os anos 2013-2022
#write.csv(matriculas_total, "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matriculas_total.csv",row.names = FALSE)

# Removendo os dataframes individuais para liberar memória
for (nome in names(lista_matriculas)) {
  rm(list=nome, envir=.GlobalEnv)
}

##CONTABILIZANDO QUANTOS VALORES "NA" CADA COLUNA POSSUI
colunas_contagem <- colSums(is.na(matriculas_total))




##CARREGANDO O DATAFRAME COMPILADO
matriculas_total <- read_csv("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/impacto_novo_regulamento_notas_ufrn/dados_matriculas/matriculas_total.csv")


###UNINDO OS DADOS DAS INFORMAÇÕES SOBRE OS CURSOS E AS MATRICULAS DE 
matriculas_cursos <- merge(matriculas_total, cursos_de_graduacao, by = "id_curso")
matriculas_cursos <- unique(matriculas_cursos)






## Definir os estratos desejados
estratos <- c("APROVADO", "REPROVADO", "APROVADO POR NOTA")

# Filtrar o dataframe pelos estratos
df_filtrado <- matriculas_cursos %>% filter(descricao %in% estratos)

##CONTABILIZANDO QUANTOS VALORES "NA" CADA COLUNA POSSUI
colunas_contagem <- colSums(is.na(df_filtrado))

##REMOVENDO AS COLUNAS COM "NA"
df_filtrado <- df_filtrado[complete.cases(df_filtrado$media_final), ]

##SELECIONANDO OS VALORES UNICOS
df_filtrado <- unique(df_filtrado)

##CONTABILIZANDO QUANTOS VALORES "NA" CADA COLUNA POSSUI
colunas_contagem <- colSums(is.na(df_filtrado))

# Substituir a vírgula por um ponto na coluna "media_final", para reconhecer como numeric ao invés de string
df_filtrado$media_final <- gsub(",", ".", df_filtrado$media_final)
df_filtrado$media_final <- as.numeric(df_filtrado$media_final)
#write.xlsx(df_filtrado, "D:/df_filtrado.xlsx")


## GARANTINDO QUE A COLUNA "descricao" CONTEM DADOS DE APROVADOS E REPROVADOS CORRETAMENTE
df_filtrado <- df_filtrado %>%
  mutate(descricao = case_when(
    media_final < 5 ~ "REPROVADO",
    media_final >= 5 & media_final < 7 ~ "APROVADO POR NOTA",
    TRUE ~ "APROVADO"
  ))


##ADICIONANDO UM NOVA COLUNA "descricao_nova" que corresponde a simulação da alteração da média de 5 para 6
df_filtrado <- df_filtrado %>%
  mutate(descricao_nova = case_when(
    media_final < 6 ~ "REPROVADO",
    media_final >= 6 & media_final < 7 ~ "APROVADO POR NOTA",
    TRUE ~ "APROVADO"
  ))

# Contabilizando o número de cada categoria nas colunas "descricao" e "descricao_nova"
count_descricao <- table(df_filtrado$descricao)
count_descricao_nova <- table(df_filtrado$descricao_nova)

# Resultados da contabilização
print(count_descricao)
print(count_descricao_nova)

## GERANDO UM BOXPLOT DA DISTRIBUIÇÃO DO STATUS DE REPROVADO PARA O DF GERAL

ggplot(df_filtrado) +
  aes(x = "", y = media_final) +
  geom_jitter(alpha = 0.1, color = ifelse(df_filtrado$media_final < 5, "red", ifelse(df_filtrado$media_final <= 7, "yellow", "green"))) +
  geom_violin(fill = "grey", alpha = 0.7) +
  geom_boxplot(fill = "grey", alpha = 0.2) +
  geom_hline(yintercept = c(5, 7), linetype = "dashed", color = "red", linewidth = 2) +
  scale_y_continuous(breaks = seq(min(df_filtrado$media_final), max(df_filtrado$media_final), 1)) +
  labs(title = "Distribuição das Médias Finais",
       y = "Média Final") +
  theme_bw()

## GERANDO UM BOXPLOT DA DISTRIBUIÇÃO DO STATUS DE REPROVADO PARA O DF GERAL PELO STATUS DE ARPOVAÇÃO
temp <- df_filtrado %>% select(media_final,descricao)
ggplot(temp) +
  aes(x = descricao, y = media_final) +
  geom_jitter(alpha = 0.1, color = ifelse(df_filtrado$media_final < 5, "red", ifelse(df_filtrado$media_final <= 7, "yellow", "green"))) +
  geom_violin(fill = "grey", alpha = 0.7) +
  geom_boxplot(fill = "grey", alpha = 0.2) +
  geom_hline(yintercept = c(5, 7), linetype = "dashed", color = "red", size = 2) +
  scale_y_continuous(breaks = seq(min(df_filtrado$media_final), max(df_filtrado$media_final), 1)) +
  labs(title = "Distribuição das Médias Finais por status de aprovação",
       y = "Média Final") +
  guides(fill = guide_legend(title = "Status")) +
  theme_bw()




# GERANDO O HISTOGRAMA DO DADO GERAL DE 2022 PARA A MÉDIA ANTIGA
hist_media_antiga <- df_filtrado %>%
  select(media_final,descricao)

# Atribuindo uma cor a cada intervalo de nota para o plot
hist_media_antiga <- hist_media_antiga %>%
  mutate(cor = case_when(
    media_final < 5 ~ "vermelho",
    media_final >= 5 & media_final < 7 ~ "amarelo",
    media_final >= 7 ~ "verde"
  )) %>%
  mutate(media_final_floor = floor(media_final))

#Calculando a contagem de cada intervalo de nota
hist_counts <- hist_media_antiga %>%
  group_by(media_final_floor, cor) %>%
  summarise(count = n())

##Gerando o histograma da distribuição das notas
ggplot(hist_counts, aes(x = media_final_floor, y = count, fill = cor)) +
  geom_bar(stat = "identity", color = "black") +
  geom_text(aes(label = count), vjust = -0.5, size = 3) +
  geom_vline(xintercept = c(4.5, 6.5), linetype = "dashed", color = "red", linewidth = 1) +
  scale_x_continuous(breaks = seq(min(hist_media_antiga$media_final), max(hist_media_antiga$media_final), 1)) +
  scale_y_continuous(breaks = seq(0, max(hist_counts$count), by = 5000)) +
  scale_fill_manual(values = c("vermelho" = "red", "amarelo" = "yellow", "verde" = "green"),
                    labels = c("Reprovado", "Aprovado por Nota", "Aprovado")) +
  xlab("Média Final") +
  ylab("Status de Aprovação") +
  ggtitle("Aprovações pela regra antiga da Média Final") +
  theme_hc() +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(fill = NULL)

# GERANDO O HISTOGRAMA DO DADO GERAL DE 2022 PARA A MÉDIA NOVA
hist_media_nova <- df_filtrado %>%
  select(media_final,descricao_nova)


# Atribuindo uma cor a cada intervalo de nota para o plot
hist_media_nova <- hist_media_nova %>%
  mutate(cor = case_when(
    media_final < 6 ~ "vermelho",
    media_final >= 6 & media_final < 7 ~ "amarelo",
    media_final >= 7 ~ "verde"
  )) %>%
  mutate(media_final_floor = floor(media_final))

# Calculando a contagem de cada intervalo de nota
hist_counts <- hist_media_nova %>%
  group_by(media_final_floor, cor) %>%
  summarise(count = n())

##Gerando o histograma da distribuição das notas
ggplot(hist_counts, aes(x = media_final_floor, y = count, fill = cor)) +
  geom_bar(stat = "identity", color = "black") +
  geom_text(aes(label = count), vjust = -0.5, size = 3) +
  geom_vline(xintercept = c(5.5, 6.5), linetype = "dashed", color = "red", size = 1) +
  scale_x_continuous(breaks = seq(min(hist_media_nova$media_final), max(hist_media_nova$media_final), 1)) +
  scale_y_continuous(breaks = seq(0, max(hist_counts$count), by = 5000)) +
  scale_fill_manual(values = c("vermelho" = "red", "amarelo" = "yellow", "verde" = "green"),
                    labels = c("Reprovado", "Aprovado por Nota", "Aprovado")) +
  xlab("Média Final") +
  ylab("Status de Aprovação") +
  ggtitle("Aprovações pela regra nova da Média Final") +
  theme_hc() +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(fill = NULL)
