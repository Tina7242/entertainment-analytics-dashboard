# 📊 Entertainment Analytics Dashboard

##  Project Overview
This project explores streaming content performance across different platforms, genres, countries, and years using SQL and Tableau.

The goal is to understand:
- What content performs best
- Which platforms dominate engagement
- How genres compare
- Regional viewing patterns
- Trends over time

---

## 📁 Dataset

The dataset contains streaming content information with the following fields:

- Content Title
- Genre
- Platform (Netflix, Spotify, Amazon Prime, Showmax)
- Release Year
- Country
- Views (in millions)
- Rating
- Duration
- Subscription Type

---

##  Key Business Questions

### 1. What are the most viewed content titles?
Identifies top-performing content across platforms.

### 2. Which platform has the highest engagement?
Compares total viewership across platforms.

### 3. Which genres are most popular?
Analyzes genre performance based on views and ratings.

### 4. How has viewership changed over time?
Tracks yearly trends in streaming consumption.

### 5. Which countries generate the most engagement?
Shows geographic distribution of audience interest.

---

## 💻 SQL Analysis

All analysis was performed using SQL.

```sql
-- Top Content
SELECT title, views_millions
FROM `Project.entertainment`
ORDER BY views_millions DESC
LIMIT 10;

-- Platform Performance
SELECT platform, SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY platform
ORDER BY total_views DESC;

-- Genre Performance
SELECT genre, AVG(rating) AS avg_rating, SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY genre
ORDER BY total_views DESC;

-- Yearly Trends
SELECT release_year, SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY release_year
ORDER BY release_year;

-- Country Performance
SELECT country, SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY country
ORDER BY total_views DESC;
```

---

## Tableau Dashboard

The final dashboard visualises:
- Content performance
- Platform comparison
- Genre analysis
- Yearly trends
- Country-level insights

![Dashboard]dashboard/Dashboard 1.png

---

##  Tools Used
- SQL (BigQuery)
- Tableau
- Google Sheets

---

##  Key Insights

- Netflix and Spotify show the highest engagement
- Action, Music, and Science Fiction are top-performing genres
- Viewership increased significantly from 2021–2023
- USA and South Africa are key high-engagement regions

---

##  Disclaimer
This project uses a simulated dataset created for portfolio purposes only.

---

## 👩🏽‍💻 Author
Tina Siyengo
