-- Total Jobs
SELECT COUNT(*) AS Total_Jobs
FROM data_analyst_jobs;

-- Top Hiring Companies
SELECT
    [Company Name],
    COUNT(*) AS Total_Jobs
FROM data_analyst_jobs
GROUP BY [Company Name]
ORDER BY Total_Jobs DESC
LIMIT 10;

-- Top Hiring Locations
SELECT
    Location,
    COUNT(*) AS Job_Count
FROM data_analyst_jobs
GROUP BY Location
ORDER BY Job_Count DESC
LIMIT 10;

-- Top Industries
SELECT
    Industry,
    COUNT(*) AS Job_Count
FROM data_analyst_jobs
GROUP BY Industry
ORDER BY Job_Count DESC
LIMIT 10;

-- Average Rating by Industry
SELECT
    Industry,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM data_analyst_jobs
WHERE Rating > 0
GROUP BY Industry
ORDER BY Avg_Rating DESC
LIMIT 10;