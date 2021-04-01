-- Get the total number of assistance_requests for a teacher.

-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name 
SELECT name, count(assistance_requests) as total_assistance_requests
FROM teachers
JOIN assistance_requests 
ON teachers.id = teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';