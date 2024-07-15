# Data Engineering NYC Parking Violations

Data Engineering Project on NY Parking Violations (~50M) Data using Docker, Airflow, AWS, Snowflake, dbt, Tableau
---
![NYParkingViolationsArchitecture](https://github.com/BadreeshShetty/Data-Engineering-ETL-Airflow-DBT-Parking/blob/main/NYParkingViolationsArchitecture.png)

Notes on the Project: [Data Engineering NYC Parking Violations Notes](https://grape-liquid-f37.notion.site/Data-Engineering-NYC-Parking-Violations-d7ab76c922d74d079c347888b62246f3)

This data engineering project involves processing and analyzing NYC parking violations data, which consists of approximately 50 million records. Below is a brief overview of the workflow and the steps involved.

## Table of Contents

- [Introduction](#introduction)
- [Data Source](#data-source)
- [Data Ingestion and Storage](#data-ingestion-and-storage)
- [Data Warehousing](#data-warehousing)
- [Data Transformation](#data-transformation)
- [Data Visualization and Reporting](#data-visualization-and-reporting)
- [Programming Languages and Tools](#programming-languages-and-tools)
- [Project Setup](#project-setup)
- [Usage](#usage)
- [Video Link](#video-link)

## Introduction

This project aims to process and analyze NYC parking violation data(~ 50M) to derive insights. The workflow involves data ingestion, storage, transformation, and visualization using various tools and technologies.

## Data Source

The data originates from [NYC OpenData](https://opendata.cityofnewyork.us/), which provides a large dataset on parking violations in New York City.

## Data Ingestion and Storage

- **Apache Airflow** is used to orchestrate the data pipeline. Airflow automates extracting the parking violation data from the NYC OpenData portal.
- The extracted data is then stored in **Amazon S3** (Simple Storage Service), which serves as the staging area for the raw data.

## Data Warehousing

From Amazon S3, the data is loaded into **Snowflake**, a cloud-based data warehousing solution. This process involves transforming the data into a structured format suitable for analysis.

## Data Transformation

**dbt (data build tool)** transforms the data within Snowflake. dbt allows for transforming raw data into a more refined state, ready for analysis.

## Data Visualization and Reporting

Once the data is transformed and stored in Snowflake, **Tableau** is used for creating visualizations, dashboards, and reports. This step enables stakeholders to derive insights from the parking violations data.

## Programming Languages and Tools

- **Python** and **SQL** are the primary programming languages used throughout the project. Python is used for scripting and automation tasks, while SQL is used for querying and managing the data within Snowflake.
- The entire workflow operates within a **Docker** container, ensuring a consistent environment for all components of the project.
- The project runs on a **Linux** operating system, providing a robust and scalable platform for the data pipeline.

## Project Setup

To set up the project, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/BadreeshShetty/Data-Engineering-ETL-Airflow-DBT-Parking.git
    cd Data-Engineering-ETL-Airflow-DBT-Parking
    ```

2. Build and start the Docker containers:
    ```bash
    docker-compose up --build -d
    ```

3. Access the Airflow web UI to monitor the data pipeline.

## Usage

1. Trigger the Airflow DAG to start the data ingestion process.
2. Monitor the data extraction and loading into Amazon S3.
3. Check the data transformation process in Snowflake using dbt.
4. Access Tableau to create visualizations and reports based on the transformed data.

## Video Link
Video Link: https://youtu.be/PNe9POTPx4I
