-- Get the total number of assignments for each day of bootcamp.

-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.
SELECT day , count(assignments.*) as sum 
FROM assignments 
GROUP BY day 
ORDER by day;
