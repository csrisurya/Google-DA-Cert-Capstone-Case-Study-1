# Google DA Cert Capstone - Case Study 1
## Overview
The file explaining the case study is "Case Study 1_How does a bike-share speedy success.pdf". The summary is to find the difference between casual patrons and annual members. Then, provide recommendations to convert casual patrons into annual members.
- Link to data files: https://divvy-tripdata.s3.amazonaws.com/index.html

I chose 2024 data since that is the most recent year with data for all 12 months (as of April 2025).

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
- Tableau Visualization (**Graphic 1**):
![image](https://github.com/user-attachments/assets/6c4f9fc3-a397-4181-8146-73c6edeabe53)
2. The second query finds the ride count by membership (e.g. casual, member) and day of week (i.e. 1 = Sunday).
- SQL Code: "ride_count_by_day_of_week.rtf"
- Resulting Table: "ride_count_by_day_of_week.csv"
- Tableau Visualization (**Graphic 2**):
![image](https://github.com/user-attachments/assets/0a909d3f-0b27-4eb3-b48a-393b05bfeba8)
3. The third query finds the ride count by membership (e.g. casual, member) and rideable type (e.g. classic, electric)
- SQL Code: "ride_count_by_rideable_type.rtf"
- Resulting Table: "ride_count_by_rideable_type.csv"
- Tableau Visualization (**Graphic 3**):
![image](https://github.com/user-attachments/assets/ec7519b9-01f7-41db-a43e-b39fb8321cf7)

### Results

#### Graphic 1 Findings
  1. On average, casual patrons went on longer trips.
  2. For casual patrons on average, the longest trip rides occurred on weekend for most months.
  3. Notable non-weekend data points for longest avg trip duration: Wednesdays in August, Mondays in January, and Fridays in June.
  4. For members on average, the trips lasted around the same time across the whole week. The weekend had the longest rides by a very slight margin.

#### Graphic 2 Findings
  5. Most of the time, members have a higher ride count than casual patrons.
  6. Casual patrons have about the same or more rides than members on weekends from May to August.

#### Graphic 3 Findings
  7. Members have more classic bike rides AND electric bike rides than casual patrons.
  8. Members and casual patrons share top 3 months for the most classic bike rides: July, August, then June respectively.
  9. For both members and casual patrons, August had the most electric bike rides. Casual patrons' second and third most electric rides occurred in July then June respectively.

### Recommendations
1. For new annual members, summer editon bikes (i.e. different color and pattern schemes) selection during June-August weekends.
- This takes into account that casual patrons go on longer and most amount of trips on the weekend. Most of the rides also occurred the summer months of June-August, which could be used to introduce summer-themed bikes (Finding 1, 2, 6, 8, 9)
2. For new annual members, offer bikes with more cushion and better durability on the weekends.
- This takes into account that casual patrons go on the most trips and the longest trips on weekends (Finding 1, 2, 6).

## Work with R
I used R Studio to make a R markdown file consisting of data importing, data cleaning, data analysis, data visualization, results, and recommendations. The data files used are "2019-Q1-divvy-tripdata" and "2020-Q1-divvy-tripdata". There is a Kaggle notebook that also presents the case study with R code.
- R code: "Case Study 1.Rmd"
- Kaggle: https://www.kaggle.com/code/srisuryachandramouli/google-da-cert-capstone-case-study-1

