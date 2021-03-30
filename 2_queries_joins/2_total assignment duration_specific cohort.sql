-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query. Expected Result:
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students
ON assignment_submissions.student_id = students.id 
JOIN cohorts 
ON students.cohort_id =cohorts.id
WHERE cohorts.name = 'FEB12';