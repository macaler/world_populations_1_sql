-- What years are covered by the dataset?
-- Using the query provided by Codecademy:
SELECT DISTINCT year FROM population_years;

--What is the largest population size for Gabon in this dataset?
SELECT year, population FROM population_years WHERE country == "Gabon";
--Although the following query yields the correct answer more directly:
SELECT year, MAX(population) FROM population_years WHERE country == "Gabon";

--What were the 10 lowest population countries in 2005?
SELECT country, population FROM population_years WHERE year == 2005 ORDER BY 2 ASC LIMIT 10;

--What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country, population FROM population_years WHERE (population >= 100) 
AND (year == 2010) ORDER BY 2 DESC;

--How many countries in this dataset have the word “Islands” in their name?
SELECT COUNT(DISTINCT country) FROM population_years WHERE country like '%Islands%';
--Of course, one can see the entire list from:
SELECT DISTINCT country FROM population_years WHERE country like '%Islands%';

--What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population FROM population_years WHERE (year == 2010) AND (country == 'Indonesia'); 
--yields 214.67661
SELECT population FROM population_years WHERE (year == 2010) AND (country == 'Indonesia');
--yields 242.96834  
SELECT 242.96834-214.67661; 
