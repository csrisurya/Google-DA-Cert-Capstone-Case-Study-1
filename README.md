# Google DA Cert Capstone - Case Study 1

## Work with Spreadsheet
### Microsoft Word
Due to the lack of Microsoft Office subscription, I wanted to access Excel through my K-State school account. I was not able to upload any of the data files (e.g. from "2024-01-divvy-tripdata" to "2024-12-divvy-tripdata").
### Google Sheets
I was able to upload the first 2 files of data files (i.e. "2024-01-divvy-tripdata" and "2024-02-divvy-tripdata"). For each of these data files, I have made pivot tables and associated charts.

![image](https://github.com/user-attachments/assets/4f267ee0-f074-40f2-82d3-8a8384772513)

![image](https://github.com/user-attachments/assets/df68e0db-6a01-47e9-8c28-ec06449975ee)

## Work with SQL
### Background
As shown in the certificate, I used Google's BigQuery to write and execute SQL queries. After getting the sandbox account, I was able to upload only the first four data files at its orginal size (e.g. "2024-01-divvy-tripdata" to "2024-04-divvy-tripdata"). Because of the 100 MB size restriction for uploading each data file, I had to compress some csv data files (e.g. "2024-05-divvy-tripdata" to "2024-10-divvy-tripdata") using an online tool: https://www.chatdb.ai/tools/csv-compressor. Then, I uploaded the data files and ran queries on BigQuery. The resulting tables (from queries) are visualized through Tableau (Tableau Public account: https://public.tableau.com/app/profile/srisurya.chandramouli/vizzes)
### Queries
1. The first query finds the average trip duration by membership type (e.g. casual, member) and day of week (i.e. 1 = Sunday).
- SQL Code: "avg_ride_length.rtf"
- Resulting Table: "avg_ride_length.csv"
- Tableau Visualization:
![image](https://github.com/user-attachments/assets/6c4f9fc3-a397-4181-8146-73c6edeabe53)
2. The second query finds the ride count by membership (e.g. casual, member) and day of week (i.e. 1 = Sunday).
- SQL Code: "ride_count_by_day_of_week.rtf"
- Resulting Table: "ride_count_by_day_of_week.csv"
- Tableau Visualization:
![image](https://github.com/user-attachments/assets/0a909d3f-0b27-4eb3-b48a-393b05bfeba8)
3. The third query finds the ride count by membership (e.g. casual, member) and rideable type (e.g. classic, electric)
- SQL Code: "ride_count_by_rideable_type.rtf"
- Resulting Table: "ride_count_by_rideable_type.csv"
- Tableau Visualization:
![image](https://github.com/user-attachments/assets/ec7519b9-01f7-41db-a43e-b39fb8321cf7)

## Work with R
I used R Studio to make a R markdown file consisting of data importing, data cleaning, data analysis, data visualization, results, and recommendations. The data files used are "2019-Q1-divvy-tripdata" and "2020-Q1-divvy-tripdata". There is a Kaggle notebook that also presents the R code.
- R code: "
- Kaggle: 

