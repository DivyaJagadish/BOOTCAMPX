-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to long

SELECT cohorts.name as cohort_name, AVG(assistance_requests.completed_at - started_at) as average_assistance_request_duration
FROM cohorts
JOIN students 
ON cohorts.id = cohort_id
JOIN  assistance_requests 
ON assistance_requests.student_id=students.id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration;