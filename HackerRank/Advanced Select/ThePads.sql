#Problem: Generate the following two result sets:
  #Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
  #Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
  
  #There are a total of [occupation_count] [occupation]s.
  #where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

#MySQL

#Condition 1:
SELECT CONCAT(NAME,"(",SUBSTRING(OCCUPATION,1,1),")") AS Name_OCC
FROM OCCUPATIONS
ORDER BY NAME ASC;

#Condition 2:
SELECT CONCAT("There are a total of ",COUNT(OCCUPATION)," ",LOWER(OCCUPATION),"s.") AS TOTAL_OCC
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY TOTAL_OCC ASC
