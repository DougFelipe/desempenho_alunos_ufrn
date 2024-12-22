# Analysis of the Impact of Regulatory Changes on UFRN Student Grades and Approvals

This repository contains data, scripts, and supporting documents for the analysis of student performance in courses at UFRN. The study focuses on identifying key factors influencing student grades and approval status based on data available from UFRN's Open Data Portal.

---

## Repository Structure

```
├── README.md                       # Project overview and repository documentation
├── Script - Douglas Felipe.r       # R script for data manipulation and analysis
├── cursos-de-graduacao.csv         # Dataset with details of UFRN undergraduate courses
├── dicionario-de-dados---cursos-de-graduacao.pdf # Metadata for `cursos-de-graduacao.csv`
├── dicionario-de-dados---matriculas-em-componentes.pdf # Metadata for student enrollment datasets
├── relatorios_summarytools         # Folder containing HTML summary reports
│   ├── Relatório Sumário.html      # Summary report
│   └── Relatório de Freqência.html # Frequency report
```

---

## Data Sources

- **cursos-de-graduacao.csv**  
  Details about UFRN undergraduate courses.  
  Source: [UFRN Open Data Portal - Courses](https://dados.ufrn.br/dataset/cursos-de-graduacao)

- **Matriculation Data (2013–2022)**  
  Enrollment and performance data for students in UFRN courses.  
  Source: [UFRN Open Data Portal - Enrollments](https://dados.ufrn.br/dataset/matriculas-componentes)

- **Dictionaries**  
  - `dicionario-de-dados---cursos-de-graduacao.pdf`: Metadata for `cursos-de-graduacao.csv`.  
  - `dicionario-de-dados---matriculas-em-componentes.pdf`: Metadata for enrollment datasets.

---

## Scripts and Analyses

- **Script - Douglas Felipe.r**  
  Contains the R code used for:
  - Loading and preprocessing datasets.
  - Cleaning and merging data.
  - Exploratory data analysis (EDA), including distribution analysis, correlation plots, and time-series trends.

- **Reports**  
  The folder `relatorios_summarytools` includes HTML files with statistical summaries and visualizations of the datasets.

---

## Usage Instructions

### Prerequisites

Ensure the following R packages are installed for executing the script:
`ggplot2`, `dplyr`, `readr`, `readxl`, `openxlsx`, `gridExtra`, `tidyverse`, `cowplot`, `ggthemes`, `summarytools`, `psych`, `skimr`, `esquisse`, `GGally`, and `corrplot`.

### Running the Analysis

1. Clone the repository:
   ```
   git clone <repository_url>
   ```
   

2. Open the R script `Script - Douglas Felipe.r` in your R environment.

3. Set the appropriate paths for your local datasets in the script.

4. Run the script to generate processed data and visualizations.

5. Review generated reports in the `relatorios_summarytools` folder.

---

## Contact Information

For questions or contributions, please contact:  
**Douglas Felipe**  
Email: [douglas.felipe@example.com](mailto:douglas.felipe@example.com)  

---

## License

This project is licensed under the [MIT License](LICENSE).
