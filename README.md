# Global Movie Data Analytics
**Tools Used:** Python | MySQL | Tableau | Google Sheets | Machine Learning  

---

##  Project Overview

This project provides a **comprehensive analysis of the global movie industry**, uncovering how **genre, budget, talent, and production strategies** drive both **financial success** and **audience ratings**.  

Using data-driven insights, statistical validation, and machine learning models, this analysis supports **strategic decision-making** for production houses, investors, and entertainment stakeholders.

---

##  Business Objectives

1. Identify the **key factors** influencing movie success — genre, budget, cast, and crew.
2. Develop **predictive models** to forecast revenue and success categories.
3. Build **interactive dashboards** for real-time business insights.
4. Recommend **data-backed strategies** for production, investment, and marketing.

---

##  Analytical Workflow

| Stage | Description | Tools |
|--------|--------------|-------|
| **Data Collection & Cleaning** | Extracted and cleaned TMDB movie & credit datasets, parsed JSONs | Python (Pandas, NumPy) |
| **Database Design** | Created a normalized SQL schema for movie, cast, crew, genre, and company data | MySQL |
| **Exploratory Data Analysis (EDA)** | Analyzed trends, correlations, and outliers in ratings, revenue, and budget | Python |
| **Statistical Validation** | Performed Z-tests, skewness, kurtosis, and stratified sampling | SciPy |
| **Machine Learning** | Built regression, classification, and clustering models | Scikit-learn |
| **Visualization & Dashboards** | Created interactive Tableau & Google Sheets dashboards | Tableau, Google Sheets |

---

##  Dataset Overview

- **Source:** The Movie Database (TMDB)  
- **Records:** 4,500+ Movies  
- **Key Fields:** Budget, Revenue, Runtime, Vote Average, Cast, Crew, Genre, Production Companies  
- **Derived Metrics:** Profit, ROI, and Release Month

---

##  Key Insights

- **Blockbuster Economics:** *Avatar* leads with **$2.55B profit**, while the **average industry profit** is $53.2M.  
- **Genre Profitability:** *Adventure* and *Action* dominate in total revenue, while *Drama* and *Crime* deliver **highest ROI**.  
- **Production Dynamics:** *Warner Bros.* leads in production count, but *Marvel* and *Pixar* achieve higher per-movie returns.  
- **Talent Patterns:** High-rated directors often come from smaller studios — indicating an **inverse scale–quality** relationship.  
- **Runtime Trends:** *History* films run longest (~136 mins); *TV Movies* are shortest (~85 mins).  

---

##  Machine Learning Models

| Model | Purpose | Accuracy | Key Insight |
|--------|----------|-----------|--------------|
| **Multiple Linear Regression** | Predict movie revenue | 75% | Budget is strongest predictor |
| **Logistic Regression** | Classify movies (Good/Average/Poor) | 70% | Quality prediction tool |
| **K-Nearest Neighbors (KNN)** | Predict Hit vs Flop | 86% | Excellent for early flop detection |
| **K-Means Clustering** | Segment top-rated movies | – | Identified 5 movie archetypes |
**Confusion Matrix (KNN):**  
- 94% recall for flops (very accurate in risk identification)  
- 62% recall for hits (moderate hit detection)

---

##  SQL Analysis Highlights

- **Average Rating by Genre:** Identified top-performing genres in audience perception.  
- **Revenue by Company:** Compared financial strength across production houses.  
- **Stored Procedures:** Automated “Top N Movies by Revenue” retrieval.  
- **Views:** Created persistent summaries for average revenue and movie count by year.

---

##  Dashboards Overview

### Tableau Dashboards
1. **Release Trends Dashboard** – Annual & monthly release trends, genre dominance.
2. **Financial Insights Dashboard** – Profitability, ROI, and blockbuster analysis.
3. **Audience & Geography Dashboard** – Country, language, and quality distribution.

### Google Sheets Dashboard
- **Department-wise Gender Analysis**
- **Top KPIs Summary (Avg Rating, Runtime, Revenue)**  
- Department, Gender, and Job Role.
---

## Statistical Findings

- **Action Movies:** Only 7% cross $500M revenue threshold.  
- **Z-Test:** Average budget significantly differs from $100M benchmark.  
- **Rating Distribution:** Negatively skewed, meaning extremes (very high or low ratings) matter more.  
- **Sampling Validation:** Stratified sampling confirmed <5% deviation from population means.

---

## Business Recommendations

1. **Diversify Investments:**  
   60% in Action/Adventure, 25% in Drama/Crime, 15% in emerging markets.  

2. **Data-Driven Casting:**  
   Use actor–revenue correlation for tentpole films; develop new talent in low-risk projects.  

3. **Market Timing:**  
   Focus releases in **September (12.2% share)** and leverage predictive accuracy (75%) for budgeting.  

4. **Operational Excellence:**  
   Close gender gap in technical departments; replicate boutique studios’ high-quality performance.  

---

## Conclusion & Way Forward

- **Key Drivers Identified:** Budget investment, genre strategy, and talent acquisition determine movie success.  
- **Predictive Power:** ML models achieve **75–86% accuracy** in forecasting revenue and outcomes. 
- **Strategic Value:** Dashboards and SQL analysis convert raw data into business intelligence.  
- **Future Scope:** Incorporate **streaming data, marketing spend, and audience sentiment** for real-time predictive analytics.  

---
