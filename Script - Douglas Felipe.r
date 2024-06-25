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
library(summarytools)
library(psych)
library(skimr)
library(esquisse)
library(GGally)

##Carregando os dados
##CARREGANDO BASE DE DADOS DOS CURSOS DA UFRN
#################
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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
  select(-faltas_unidade)

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
#################

## SELECIONANDO AS VARIAVEIS DE INTERESSE
matriculas_2022_2 <- matriculas_2022_2 %>%
  select(-faltas_unidade)

matriculas_2022_2$semestre <- "2022.2"

## SELECIONANDO OS VALORES UNICOS
matriculas_2022_2 <- unique(matriculas_2022_2)
########

##SELECIONANDO AS INFORMAÇÕES DAS TURMAS PARA EXTRAIR O TURNO
#################

##FUNÇÃO PARA LER OS DADOS E MANTER APENAS AS COLUNAS DE INTERESSE
carregar_dados_turmas <- function(diretorio) {
  # Define o caminho completo para o diretório contendo os arquivos CSV
  path <- "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_turmas"
  
  # Lista todos os arquivos CSV no diretório
  arquivos_csv <- list.files(path = diretorio, pattern = "\\.csv$", full.names = TRUE)
  
  # Inicializa um dataframe vazio para armazenar os dados
  dados_turmas <- data.frame()
  
  # Lê cada arquivo CSV, seleciona as colunas desejadas e os combina
  for (arquivo in arquivos_csv) {
    dados <- read_csv2(arquivo, col_names = TRUE) %>%
      select(id_turma, ano, descricao_horario)
    
    # Combina os dados do arquivo atual com o dataframe principal
    dados_turmas <- bind_rows(dados_turmas, dados)
  }
  
  return(dados_turmas)
}

# Chama a função com o caminho do diretório
dados_turmas <- carregar_dados_turmas("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_turmas")

## MANTER NO DATAFRAME DE DADOS TURMAS APENAS A INFORMAÇÃO DO TURNO M, T OU N
dados_turmas <- dados_turmas %>%
  mutate(descricao_horario = str_extract(str_extract(descricao_horario, "^[^ ]*"), "[MNT]"))


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
#write.table(matriculas_total, file = "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/matriculas_total.tsv", sep = "\t", row.names = FALSE, quote = FALSE)

# Removendo os dataframes individuais para liberar memória
for (nome in names(lista_matriculas)) {
  rm(list=nome, envir=.GlobalEnv)
}

##CONTABILIZANDO QUANTOS VALORES "NA" CADA COLUNA POSSUI
colunas_contagem <- colSums(is.na(matriculas_total))
#################



#########


##CARREGANDO O DATAFRAME COMPILADO
#matriculas_total <- read_csv("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/matriculas_total/matriculas_total.csv")

matriculas_total <- read_delim("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/matriculas_total.tsv", 
                              delim = "\t", escape_double = FALSE, 
                             trim_ws = TRUE)


###UNINDO OS DADOS DAS INFORMAÇÕES SOBRE OS CURSOS E AS MATRICULAS
matriculas_cursos <- merge(matriculas_total, cursos_de_graduacao, by = "id_curso")
#matriculas_cursos <- unique(matriculas_cursos)
# Substituir a vírgula por um ponto na coluna "media_final", para reconhecer como numeric ao invés de string
matriculas_cursos$media_final <- gsub(",", ".", matriculas_cursos$media_final)
matriculas_cursos$nota <- gsub(",", ".", matriculas_cursos$nota)

#write.table(matriculas_cursos, file = "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_matricuas/dados_matriculas_cursos.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
matriculas_cursos <- merge(matriculas_cursos, dados_turmas, by = "id_turma")
matriculas_cursos <- unique(matriculas_cursos)
#write.table(matriculas_cursos, file = "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_matricuas/dados_matriculas_cursos.tsv", sep = "\t", row.names = FALSE, quote = FALSE)


matriculas_cursos <-read_delim("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_matricuas/dados_matriculas_cursos.txt", 
                                  delim = "\t", escape_double = FALSE, 
                                  trim_ws = TRUE)



###REMOVENDO VALORES INADEQUADOS DE UNIDADE (EXISTIAM DADOS ENTRE 4 E 29), MESMO EXISTINDO APENAS 1,2 E 3 UNIDADES
# Filtrando o DataFrame para manter apenas as linhas onde 'unidade' é 1, 2, 3 ou NA
matriculas_cursos <- matriculas_cursos %>%
  filter(unidade %in% c(1, 2, 3))

#matriculas_cursos <- matriculas_cursos %>%
 # filter(numero_total_faltas <= 105)


#matriculas_cursos <- unique(matriculas_cursos)


#Avaliando o dataset

str(matriculas_cursos)

summary(matriculas_cursos)

glimpse(matriculas_cursos)

describe(matriculas_cursos)

skim(matriculas_cursos)


##Definindo os tipos de dados para cada variavel
#write.table(matriculas_cursos_clean, file = "D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_matricuas/matriculas_cursos_clean.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
matriculas_cursos_clean <- read_delim("D:/Tecnologia da Informação (TI)/P5 2024.1/ANÁLISE VISUAL DE DADOS/desempenho_alunos_ufrn/dados_matricuas/matriculas_cursos_clean.tsv", 
                                     delim = "\t", escape_double = FALSE, 
                                  trim_ws = TRUE)

matriculas_cursos_clean$id_turma <- as.factor(matriculas_cursos_clean$id_turma)
matriculas_cursos_clean$id_curso <- as.factor(matriculas_cursos_clean$id_curso)
matriculas_cursos_clean$discente <- as.factor(matriculas_cursos_clean$discente)

matriculas_cursos_clean$unidade <- as.factor(matriculas_cursos_clean$unidade)

matriculas_cursos_clean$nota <- as.numeric(matriculas_cursos_clean$nota)
matriculas_cursos_clean$media_final <- as.numeric(matriculas_cursos_clean$media_final)
matriculas_cursos_clean$numero_total_faltas <- as.numeric(matriculas_cursos_clean$numero_total_faltas)

matriculas_cursos_clean$descricao <- as.factor(matriculas_cursos_clean$descricao)
matriculas_cursos_clean$semestre <- as.factor(matriculas_cursos_clean$semestre)
matriculas_cursos_clean$nome <- as.factor(matriculas_cursos_clean$nome)
matriculas_cursos_clean$grau_academico <- as.factor(matriculas_cursos_clean$grau_academico)

matriculas_cursos_clean$modalidade_educacao <- as.factor(matriculas_cursos_clean$modalidade_educacao)
matriculas_cursos_clean$area_conhecimento <- as.factor(matriculas_cursos_clean$area_conhecimento)
matriculas_cursos_clean$municipio <- as.factor(matriculas_cursos_clean$municipio)
matriculas_cursos_clean$ano <- as.factor(matriculas_cursos_clean$ano)
matriculas_cursos_clean$descricao_horario <- as.factor(matriculas_cursos_clean$descricao_horario)

#summarytools
#summarytools::dfSummary(matriculas_cursos_clean)
temp <- matriculas_cursos_clean
temp$discente <-  NULL
summarytools::freq(matriculas_cursos)
summarytools::freq(temp)

df_report <- dfSummary(temp)


### adaptando para sumarizar a frequencia
# Substituir a vírgula por um ponto na coluna "media_final", para reconhecer como numeric ao invés de string
#temp$media_final <- gsub(",", ".", temp$media_final)
#temp$media_final <- as.numeric(temp$media_final)
temp$discente <- NULL
temp$id_turma <- NULL
temp$id_curso <- NULL

freq_report <- freq(temp)
# Visualize os resultados e salve como HTML
#view(df_report, file = "df_report_summarytools.html", title = "Relatório de Ciência de Dados (summarytools)")
#view(freq_report, file = "freq_report_summarytoolsCD.html", title = "Relatório de Ciência de Dados (freq Report)")

# Normalização Min-Max da coluna numero_total_faltas
matriculas_cursos_clean$faltas_normalizadas <- (matriculas_cursos_clean$numero_total_faltas - min(matriculas_cursos_clean$numero_total_faltas, na.rm = TRUE)) / 
  (max(matriculas_cursos_clean$numero_total_faltas, na.rm = TRUE) - min(matriculas_cursos_clean$numero_total_faltas, na.rm = TRUE))


# Aplicando Standard Scaler (Z-Score Normalization) à coluna numero_total_faltas
#matriculas_cursos_clean$faltas_normalizadas <- (matriculas_cursos_clean$numero_total_faltas - mean(matriculas_cursos_clean$numero_total_faltas, na.rm = TRUE)) / 
 # sd(matriculas_cursos_clean$numero_total_faltas, na.rm = TRUE)


# Codificando as variáveis categóricas e adicionando com sufixo _categ
matriculas_cursos_clean <- matriculas_cursos_clean %>%
  mutate(descricao_categ = as.integer(factor(descricao)),
         nome_categ = as.integer(factor(nome)),
         grau_academico_categ = as.integer(factor(grau_academico)),
         area_conhecimento_categ = as.integer(factor(area_conhecimento)),
         municipio_categ = as.integer(factor(municipio)),
         descricao_horario_categ = as.integer(factor(descricao_horario)))

# Salvar o dataframe matriculas_cursos_clean como um arquivo RDS
#saveRDS(matriculas_cursos_clean, "D:/Tecnologia da Informação (TI)/P5 2024.1/CIÊNCIAS DE DADOS/Projeto Disciplina/matriculas_cursos_clean.rds")
# Caminho para o arquivo RDS


file_path <- "D:/Tecnologia da Informação (TI)/P5 2024.1/CIÊNCIAS DE DADOS/Projeto Disciplina/matriculas_cursos_clean.rds"

# Ler o arquivo RDS
matriculas_cursos_clean <- readRDS(file_path)


#Avaliando o dataset

str(matriculas_cursos_clean)

summary(matriculas_cursos_clean)

glimpse(matriculas_cursos_clean)

describe(matriculas_cursos_clean)

skim(matriculas_cursos_clean)

#ANÁLIS EXPLORATÓRIA
#####################

#AVALIAÇÃO DA DISTRIBUIÇÃO
ggplot(matriculas_cursos_clean, aes(x = nota)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +  # Histograma das notas
  geom_vline(aes(xintercept = mean(nota, na.rm = TRUE)),            
             color = "red", linetype = "dashed", size = 1) +
  scale_x_continuous(breaks = 0:10) +
  ggtitle("Distribuição das Notas") +                               
  xlab("Nota") +                                                  
  ylab("Frequência") +
  theme_minimal() 

#ANÁLISE TEMPORAL DAS MÉDIAS POR SEMESTRE
matriculas_cursos_clean %>%
  mutate(ano = as.numeric(as.character(ano)),  # Converter 'ano' para numérico dentro do pipe
         semestre = as.character(semestre)) %>%  # Manter semestre como caracter para facilitar a plotagem
  group_by(semestre) %>%
  summarise(media_nota = mean(nota, na.rm = TRUE)) %>%
  ggplot(aes(x = semestre, y = media_nota, group = 1)) +  
  geom_line() +  
  geom_point() +  
  ggtitle("Evolução Semestral da Média das Notas") +
  xlab("Semestre") +
  ylab("Média da Nota") +
  scale_y_continuous(limits = c(0, 10), breaks = seq(0, 10, 1)) +  # Escala de y de 0 a 10 com intervalos de 1
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 


# Criando um gráfico de barras para a variável descricao
ggplot(matriculas_cursos_clean, aes(x = descricao)) +
  geom_bar(fill = "green", color = "black") +
  ggtitle("Frequência das Descrições de Status") +
  xlab("Descrição") +
  ylab("Frequência") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 



# Criando um gráfico de barra empilhada (proporção percentual) 
ggplot(matriculas_cursos_clean, aes(x = factor(1), fill = descricao)) +
  geom_bar(position = "fill", color = "black") +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(fill = "Descrição", y = "Percentual", title = "Proporção Percentual das Descrições de Status") +
  theme_bw() +
  theme(legend.position = "right") +
  scale_fill_viridis_d(option = "magma", direction = -1)  



##Avaliação por correlograma
# Carregar as bibliotecas necessárias
library(corrplot)

# Preparar os dados: remover NA e selecionar variáveis relevantes
data <- na.omit(matriculas_cursos_clean[c("nota", "media_final", "numero_total_faltas",
                                          "ano", "semestre", "unidade")])

# Conversão das categorias em valores numéricos 
data$ano <- as.numeric(as.character(data$ano))
data$semestre <- as.numeric(as.character(data$semestre))
data$unidade <- as.numeric(as.character(data$unidade))

# Calcular a matriz de correlação
cor_matrix <- cor(data, use = "complete.obs", method = "pearson")

# Gerar correlograma
corrplot(cor_matrix, method = "color", type = "upper", order = "hclust",
         addCoef.col = "black", tl.col = "black", tl.srt = 45, 
         title = "Correlograma das Variáveis Relacionadas às Notas e Aprovação dos Alunos")

# Gráfico de barras para visualizar a frequência de status de aprovação/reprovação por área de conhecimento
matriculas_cursos_clean %>%
  filter(descricao %in% c("APROVADO", "REPROVADO", "APROVADO POR NOTA")) %>%
  ggplot(aes(x = area_conhecimento, fill = descricao)) +
  geom_bar(position = "dodge") +
  theme_bw()+
  labs(title = "Frequência de Status de Aprovação por Área de Conhecimento", x = "Área de Conhecimento", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5)) + 

# Contar e calcular proporções
matriculas_cursos_clean %>%
  count(area_conhecimento) %>%
  mutate(prop = n / sum(n)) %>%
  ggplot(aes(x = "", y = prop, fill = area_conhecimento)) +  # Usar x = "" para criar um único grupo
  geom_bar(stat = "identity", position = "stack") +
  scale_y_continuous(labels = percent_format()) +
  labs(title = "Proporção Percentual de Representantes por Área de Conhecimento",
       x = "",
       y = "Percentual") +
  theme_minimal() +
  theme(axis.text.x = element_blank(),  
        axis.ticks = element_blank(),  
        panel.grid = element_blank())  

# Gráfico de barras para contar a frequência de status de aprovação/reprovação por município
matriculas_cursos_clean %>%
  filter(descricao %in% c("APROVADO", "REPROVADO", "APROVADO POR NOTA")) %>%
  ggplot(aes(x = municipio, fill = descricao)) +
  geom_bar(position = "dodge") +
  labs(title = "Frequência de Status de Aprovação por Município", x = "Município", y = "Contagem") +
  theme_bw()+
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5)) + 

# Contar e calcular proporções
matriculas_cursos_clean %>%
  count(municipio) %>%
  mutate(prop = n / sum(n)) %>%
  ggplot(aes(x = "", y = prop, fill = municipio)) +  # Usar x = "" para criar um único grupo
  geom_bar(stat = "identity", position = "stack") +
  scale_y_continuous(labels = percent_format()) +
  labs(title = "Proporção Percentual de Representantes por Área de Conhecimento",
       x = "",
       y = "Percentual") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(),  
        panel.grid = element_blank())  


