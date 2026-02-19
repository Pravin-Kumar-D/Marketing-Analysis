# Marketing-Analysis




## 1. Executive Summary

Using **SQL, Python, and Power BI**, I analyzed multi-source marketing and customer interaction data to diagnose declining engagement, falling conversion rates, and underperforming marketing investments.

The project focuses on identifying **where visitors drop off, which content drives engagement, and how customer sentiment impacts performance**. The final output is an interactive Power BI dashboard enabling stakeholders to self-serve insights across customer journey stages, marketing channels, products, and reviews.

**Key outcomes from the analysis:**

* Identified major drop-off stages in the customer conversion funnel
* Measured product-level conversion volatility
* Determined high-performing content types driving engagement
* Applied NLP-based sentiment analysis on customer reviews
* Delivered actionable recommendations to improve conversion and ROI



## 2. Business Problem

The organization is facing multiple performance challenges:

* Reduced customer engagement across marketing channels
* Decreased conversion rates from visitors to customers
* High marketing expenses with unclear returns
* Limited structured insight from customer reviews

Without a centralized analytical view, stakeholders lack clarity on:

* Where customers drop off in the funnel
* Which products convert efficiently
* Which content types drive meaningful engagement
* How customer sentiment influences satisfaction and retention

**Objective:**
Build a scalable analytics solution integrating customer journey, engagement, product, and sentiment data to improve conversion rates, engagement levels, and customer satisfaction.


## 3. Methodology

### Data Extraction & Transformation (SQL)

* Imported raw CSV files into SQL Server
* Preserved original tables and wrote transformation queries separately
* Removed duplicates using and cleaned text fields
* Filled missing values using window functions
* Split combined Views-Clicks columns

### Sentiment Analysis (Python)

* Connected SQL Server to Python using `pyodbc`
* Applied **NLTK VADER Sentiment Analyzer**
* Generated SentimentScore, SentimentCategory, and SentimentBucket
* Exported enriched dataset for Power BI reporting

### Data Modeling (Power BI)

Designed a structured **star schema**:

**Dimension Tables**

* dim_customers
* dim_products
* Calendar (custom-built for time intelligence)

**Fact Tables**

* fact_customer_journey
* fact_engagement_data
* fact_customer_reviews
* fact_customer_reviews_with_sentiment

Centralized all measures in a dedicated **Calculations table** using DAX.

### Analysis & Visualization

Developed four analytical pages:

1. Overview
2. Conversion Details
3. Social Media
4. Customer Reviews

Created DAX measures including Conversion Rate, Conversion Volatility, Engagement KPIs, Average Rating, Sentiment Metrics, and Funnel Analysis.



## 4. Skills

### SQL

* CTEs
* Window functions
* String manipulation
* Deduplication
* Data enrichment

### Python

* SQL integration using pyodbc
* NLP using NLTK VADER
* Sentiment scoring and categorization

### Power BI

* Star schema modeling
* Custom Calendar table
* Advanced DAX measures
* Funnel analysis
* KPI design
* Interactive dashboards

### Analytics Concepts

* Conversion funnel analysis
* Marketing performance tracking
* Engagement analytics
* Sentiment analysis
* Volatility measurement



## 5. Results & Business Recommendations

### Key Findings

* Conversion rates fluctuated significantly, peaking in **January (17.31%)** and dropping to **6.51% in October**.
* Major drop-offs occur between the Click and Purchase stages.
* Engagement declined in the second half of the year.
* Blog content generated the highest views compared to social and video content.
* Sentiment analysis shows strong positive dominance (840 positive reviews), but average rating remains below the 4.0 benchmark.

### Recommendations

* Optimize Click-to-Purchase funnel stages to reduce drop-offs.
* Focus marketing spend on historically high-converting products and peak months.
* Revitalize content strategy during low-engagement periods (September–December).
* Increase investment in high-performing content types (Blog + Social).
* Implement structured feedback resolution for mixed and negative reviews.



## 6. Next Steps

* Integrate campaign cost data to measure ROI directly
* Build predictive conversion models
* Implement RFM-based customer segmentation
* Add cohort retention analysis
* Automate sentiment refresh pipeline



## Project Assets

* SQL transformation scripts
  
  [Customer Journey table.sql](https://github.com/user-attachments/files/25416319/Customer.Journey.table.sql)
  
  [Customer Reviews table.sql](https://github.com/user-attachments/files/25416329/Customer.Reviews.table.sql)
  
  [Customers table.sql](https://github.com/user-attachments/files/25416333/Customers.table.sql)
  
  [Engagement Data table.sql](https://github.com/user-attachments/files/25416337/Engagement.Data.table.sql)
  
  [Products table.sql](https://github.com/user-attachments/files/25416357/Products.table.sql)




* Python sentiment analysis script
  
  [Customer Review Sentiment Analysis.py](https://github.com/user-attachments/files/25416554/Customer.Review.Sentiment.Analysis.py)

* Power BI Report (.pbix)

  
* Dashboard screenshots (4 pages)

  <img width="1120" height="632" alt="Page 1" src="https://github.com/user-attachments/assets/ef57623a-d215-40ef-86ae-51ed6e8c2def" />
  <img width="1125" height="631" alt="Page 2" src="https://github.com/user-attachments/assets/63e5d68c-a428-4dc0-bbb8-c3a6107f54e6" />
  <img width="1122" height="633" alt="Page 3" src="https://github.com/user-attachments/assets/eeb41e10-9d41-42d3-b6b6-f98d90e0f08e" />
  <img width="1124" height="632" alt="Page 4" src="https://github.com/user-attachments/assets/52f3399d-4fc2-47bd-834a-57c488370c28" />




