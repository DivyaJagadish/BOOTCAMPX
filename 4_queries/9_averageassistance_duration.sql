-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT AVG(total_assistance.total_duration) AS average_total_duration
FROM(
SELECT cohorts.name as cohort, SUM(completed_at-started_at)  as total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohort
ORDER BY total_duration) as total_assistance;
