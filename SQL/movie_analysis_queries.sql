-- CAPSTONE PROJECT
-- MOVIE DATA ANALYSIS

USE movies_data;

-- 1. PERFORMANCE ANALYSIS

-- 1.1. Average rating (vote_average) for each genre
SELECT g.genre_name, AVG(m.vote_average) AS avg_rating
FROM m_df m
JOIN genres_df g
ON m.movie_id = g.movie_id
GROUP BY g.genre_name
ORDER BY avg_rating DESC;

-- 1.2. Total movies per production company
SELECT pc.company_name, COUNT(*) AS movie_count
FROM m_df m
JOIN production_companies_df pc
ON m.movie_id = pc.movie_id
GROUP BY pc.company_name
ORDER BY movie_count DESC;

-- 2. REVENUE ANALYSIS

-- 2.1. Total revenue per genre
SELECT g.genre_name, SUM(m.revenue) AS total_revenue
FROM m_df m
JOIN genres_df g
ON m.movie_id = g.movie_id
GROUP BY g.genre_name
ORDER BY total_revenue DESC;

-- 2.2. Average revenue per production company
SELECT pc.company_name, AVG(m.revenue) AS Average_revenue
FROM m_df m
JOIN production_companies_df pc
ON m.movie_id = pc.movie_id
GROUP BY pc.company_name
ORDER BY Average_revenue DESC;

-- 3. BUDGET ANALYSIS

-- 3.1. Average budget per release year
SELECT YEAR(m.release_date) AS release_year, AVG(m.budget) AS avg_budget
FROM m_df m
WHERE YEAR(m.release_date) <> 1900
GROUP BY YEAR(m.release_date)
ORDER BY release_year;

-- 3.2. Sum of budget and revenue per company
SELECT pc.company_name, 
SUM(m.budget) AS Total_Budget,
SUM(m.revenue) AS Total_Revenue
FROM m_df m
JOIN production_companies_df pc
ON m.movie_id = pc.movie_id
GROUP BY pc.company_name
ORDER BY Total_Budget DESC;

-- 4. CAST & CREW IMPACT ANALYSIS

-- 4.1. Top 10 actors by total revenue of their movies
SELECT c.actor_name, SUM(m.revenue) AS Total_Revenue
FROM m_df m
JOIN cast_df c
ON m.movie_id = c.movie_id
GROUP BY c.actor_name
ORDER BY Total_Revenue DESC
LIMIT 10;

-- 4.2. Top 10 directors by average movie rating
SELECT cr.crew_name, AVG(m.vote_average) AS Average_Rating
FROM m_df m
JOIN crew_df cr 
ON m.movie_id = cr.movie_id
GROUP BY cr.crew_name
ORDER BY Average_Rating DESC
LIMIT 10;

-- 5. CREATING VIEWS

-- 5.1. Average Revenue by Genre
CREATE VIEW view_avg_revenue_by_genre AS
SELECT g.genre_name, AVG(m.revenue) AS avg_revenue
FROM m_df m
JOIN genres_df g 
ON m.movie_id = g.movie_id
WHERE YEAR(m.release_date) <> 1900    
GROUP BY g.genre_name;

-- 5.2. Movie Count by Release Year
CREATE VIEW view_movie_count_by__year AS
SELECT YEAR(m.release_date) AS release_year,
COUNT(*) AS movie_count
FROM m_df m
WHERE YEAR(m.release_date) <> 1900  
GROUP BY YEAR(m.release_date)
ORDER BY release_year;

-- 6. STORED PROCEDURE

-- 6.1. Get Top N Movies by Revenue
DELIMITER //

CREATE PROCEDURE get_top_movies_by_revenue (IN top_n INT)
BEGIN
    SELECT m.title, m.revenue, m.budget,  m.release_date
	FROM m_df m
    WHERE YEAR(m.release_date) <> 1990    
    ORDER BY m.revenue DESC
    LIMIT top_n;
END//

DELIMITER ;

-- Calling the Stored Procedure
CALL get_top_movies_by_revenue(5);














