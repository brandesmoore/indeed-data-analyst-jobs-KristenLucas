SELECT COUNT (*) FROM data_analyst_jobs
-- ^Q1 1793 rows --
SELECT * FROM data_analyst_jobs LIMIT 10
-- ^Q2 Exxon Mobil --
SELECT COUNT(*) FROM data_analyst_jobs WHERE location = 'TN'
-- ^Q3 21 in TN --
SELECT COUNT(*) FROM data_analyst_jobs WHERE location = 'KY'
-- ^Q3 6 in KY --
SELECT COUNT(*) FROM data_analyst_jobs WHERE location = 'TN'
OR location = 'KY'
-- ^Q3 27 in TN and KY combined --
SELECT COUNT(*) FROM data_analyst_jobs WHERE location = 'TN'
AND star_rating > 4
-- ^Q4 there are 3 --
SELECT COUNT(*) FROM data_analyst_jobs WHERE review_count > 500
AND review_count < 1000
-- ^Q5 there are 150 --
SELECT ROUND(AVG(star_rating),2) AS avg_rating, location AS state
FROM data_analyst_jobs GROUP BY location ORDER BY avg_rating DESC
-- ^Q6 NE shows the highest avg rating --