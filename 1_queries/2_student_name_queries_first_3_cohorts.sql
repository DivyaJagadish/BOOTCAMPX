-- total number of students who were in the first 3 cohorts.
SELECT count(name)
FROM students
WHERE cohort_id < 4;