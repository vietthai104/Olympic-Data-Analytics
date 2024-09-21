# Tokyo Olympic Data Engineering | Azure Services

## Introduction

This project demonstrates a comprehensive data engineering solution for processing and analyzing Tokyo Olympic data using various Azure services. The pipeline extracts data using Azure Data Factory, stores raw data in Azure Data Lake Storage Gen 2, transforms the data using Azure Databricks, and finally analyzes and visualizes the results using Azure Synapse Analytics and Power BI.

## Architecture

![Project Architecture](link_to_architecture_diagram.png)

Our data engineering pipeline follows these steps:
1. Data extraction using Azure Data Factory
2. Raw data storage in Azure Data Lake Storage Gen 2
3. Data transformation with Azure Databricks
4. Processed data storage back to Azure Data Lake Storage Gen 2
5. Data analysis using Azure Synapse Analytics
6. Data visualization with Power BI

## Technology Used

* Python
* SQL
* Azure Data Factory
* Azure Data Lake Storage Gen 2
* Azure Databricks
* Azure Synapse Analytics
* Power BI


## Data Flow

1. **Data Extraction**: Azure Data Factory pipelines are used to extract data from various sources related to the Tokyo Olympics.

2. **Raw Data Storage**: The extracted data is stored in its raw format in Azure Data Lake Storage Gen 2, preserving the original structure and content.

3. **Data Transformation**: Azure Databricks is utilized to process and transform the raw data. This step includes data cleaning, formatting, and any necessary aggregations or calculations.

4. **Processed Data Storage**: The transformed data is then stored back in Azure Data Lake Storage Gen 2, now in a structured format ready for analysis.

5. **Data Analysis**: Azure Synapse Analytics is used to perform complex queries and analytics on the processed data, generating insights about the Tokyo Olympics.

6. **Data Visualization**: Finally, Power BI connects to Azure Synapse Analytics to create interactive dashboards and reports, providing visual representations of the Olympic data and insights.

## Datasets
Original datasets - https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo


