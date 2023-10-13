SELECT * FROM data_analysis_using_sql.`hr_analytics`;
SELECT COUNT(*) AS total_count FROM `data_analysis_using_sql`.`hr_analytics`;
SHOW COLUMNS FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT COUNT(*) AS total_employees FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT gender, COUNT(*) AS employee_by_gender_count FROM `data_analysis_using_sql`.`hr_analytics` GROUP BY gender;
SELECT AVG(age) AS average_age FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT department, COUNT(*) AS num_employees FROM `data_analysis_using_sql`.`hr_analytics` GROUP BY department;
SELECT MAX(MonthlyIncome) AS highest_salary FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT MIN(MonthlyIncome) AS lowest_salary FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT * FROM `data_analysis_using_sql`.`hr_analytics` ORDER BY YearsAtCompany DESC LIMIT 3;
SELECT AVG(TotalWorkingYears) AS Years_of_experience FROM `data_analysis_using_sql`.`hr_analytics`;
SELECT EducationField, COUNT(*) AS num_employees FROM `data_analysis_using_sql`.`hr_analytics` GROUP BY EducationField;
SELECT MaritalStatus, COUNT(*) AS num_employees FROM `data_analysis_using_sql`.`hr_analytics` GROUP BY MaritalStatus;
SELECT (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `data_analysis_using_sql`.`hr_analytics`))
 AS turnover_rate FROM `data_analysis_using_sql`.`hr_analytics` WHERE attrition = 'Yes';
SELECT JobSatisfaction FROM data_analysis_using_sql.hr_analytics;
SELECT JobSatisfaction FROM data_analysis_using_sql.hr_analytics WHERE JobSatisfaction <= 2;
SELECT EmpID, JobSatisfaction FROM data_analysis_using_sql.hr_analytics WHERE JobSatisfaction <= 2;
SELECT EmpID, JobSatisfaction, COUNT(*) AS TotalEmployees FROM data_analysis_using_sql.hr_analytics WHERE JobSatisfaction <= 2 GROUP BY EmpID, JobSatisfaction;
SELECT EmpID, JobSatisfaction, COUNT(*) AS TotalEmployees
FROM data_analysis_using_sql.hr_analytics
WHERE JobSatisfaction <= 2
GROUP BY EmpID, JobSatisfaction
UNION
SELECT NULL, NULL, COUNT(*) AS TotalEmployees
FROM data_analysis_using_sql.hr_analytics
WHERE JobSatisfaction <= 2;
SELECT * FROM data_analysis_using_sql.hr_analytics WHERE attrition = 'Yes';
SELECT COUNT(*) AS TotalAttrition FROM data_analysis_using_sql.hr_analytics WHERE attrition = 'Yes';
SELECT department, AVG(MonthlyIncome) AS avg_salary FROM data_analysis_using_sql.hr_analytics GROUP BY department;
SELECT * FROM data_analysis_using_sql.hr_analytics WHERE YearsSinceLastPromotion = 0;
SELECT *, (SELECT COUNT(*) FROM data_analysis_using_sql.hr_analytics WHERE YearsSinceLastPromotion = 0) AS TotalZeroPromotion 
FROM data_analysis_using_sql.hr_analytics WHERE YearsSinceLastPromotion = 0;
SELECT JobRole, Gender, COUNT(*) AS num_employees FROM data_analysis_using_sql.hr_analytics GROUP BY JobRole, Gender;
Select * from data_analysis_using_sql.hr_analytics where Attrition= 'Yes' and PerformanceRating <=2;
SELECT COUNT(*) FROM data_analysis_using_sql.hr_analytics WHERE Attrition = 'Yes';
SELECT COUNT(*) FROM data_analysis_using_sql.hr_analytics WHERE PerformanceRating <= 2;
select Attrition, PerformanceRating, Count(*) from data_analysis_using_sql.hr_analytics where PerformanceRating <=3 and Attrition = 'Yes' 
group by Attrition, PerformanceRating;

























