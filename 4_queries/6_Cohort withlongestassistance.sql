-- Cohort With Longest Assistances
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest averag


SELECT cohorts.name as name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY -AVG(completed_at - started_at)  LIMIT 1;

