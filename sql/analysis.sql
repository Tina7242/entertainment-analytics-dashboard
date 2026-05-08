-- =========================================
-- ENTERTAINMENT ANALYTICS SQL PROJECT
-- =========================================

-- 1. Most Popular

SELECT
  genre,
  AVG(rating) AS avg_rating,
  SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY genre
ORDER BY total_views DESC;

-- =========================================

-- 2. PLATFORM PERFORMANCE

SELECT
  platform,
  SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY platform
ORDER BY total_views DESC;

-- =========================================

-- 3. GENRE POPULARITY

SELECT
  genre,
  AVG(rating) AS avg_rating,
  SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY genre
ORDER BY total_views DESC;

-- =========================================

-- 4. YEARLY VIEWERSHIP TREND

SELECT
  release_year,
  SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY release_year
ORDER BY release_year;

-- =========================================

-- 5. COUNTRY PERFORMANCE

SELECT
  country,
  SUM(views_millions) AS total_views
FROM `Project.entertainment`
GROUP BY country
ORDER BY total_views DESC;

-- =========================================

-- 6. SUBSCRIPTION TYPE ANALYSIS

SELECT
  subscription_type,
  SUM(views_millions) AS total_views,
  COUNT(content_id) AS total_content,
  ROUND(AVG(rating), 2) AS average_rating
FROM `Project.entertainment`
GROUP BY subscription_type
ORDER BY total_views DESC;

-- =========================================

-- 7. PLATFORM MARKET SHARE

SELECT
  platform,
  ROUND(
    SUM(views_millions) * 100 /
    SUM(SUM(views_millions)) OVER (),
    2
  ) AS market_share_percentage
FROM `Project.entertainment`
GROUP BY platform
ORDER BY market_share_percentage DESC;

-- =========================================

-- 10. SOUTH AFRICAN CONTENT PERFORMANCE

SELECT
  title,
  genre,
  platform,
  views_millions,
  rating
FROM `Project.entertainment`
WHERE country = 'South Africa'
ORDER BY views_millions DESC;
