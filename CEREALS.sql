-- What is the average content of each nutrient and element per manufacturer?
-- What is the number of calories per ounce for each product?
-- What is the average rating per manufacturer? Is it somehow connected to average nutrient content?
-- Which manufacturer possesses the best shelf location?
-- What is the nutritional value of each cereal according to protein, fat, and carbohydrate data

SELECT *
FROM 80cereals;

SELECT mfr,AVG(calories) AS avg_calories
FROM 80cereals
GROUP BY mfr
ORDER BY avg_calories DESC;

SELECT mfr,AVG(protein) AS avg_protein
FROM 80cereals
GROUP BY mfr
ORDER BY avg_protein DESC;

SELECT mfr,AVG(fat) AS avg_fat
FROM 80cereals
GROUP BY mfr
ORDER BY avg_fat DESC;

SELECT mfr,AVG(sodium) AS avg_sodium
FROM 80cereals
GROUP BY mfr
ORDER BY avg_sodium DESC;

SELECT mfr,AVG(fiber) AS avg_fiber
FROM 80cereals
GROUP BY mfr
ORDER BY avg_fiber DESC;

SELECT mfr,AVG(carbo) AS avg_carbo
FROM 80cereals
GROUP BY mfr
ORDER BY avg_carbo DESC;

SELECT mfr,AVG(calories) AS avg_calories
FROM 80cereals
GROUP BY mfr
ORDER BY avg_calories DESC;

SELECT mfr,AVG(sugars) AS avg_sugars
FROM 80cereals
GROUP BY mfr
ORDER BY avg_sugars DESC;

SELECT mfr,AVG(potass) AS avg_potass
FROM 80cereals
GROUP BY mfr
ORDER BY avg_potass DESC;

SELECT mfr,AVG(vitamins) AS avg_vitamins
FROM 80cereals
GROUP BY mfr
ORDER BY avg_vitamins DESC;

-- products with the lowest calories, fat,sugars
SELECT name,mfr, MIN(calories) AS low_calories ,MIN(fat) AS low_fats,MIN(sugars) AS low_sugars
FROM 80cereals
GROUP BY name,mfr
ORDER BY low_calories,low_fats,low_sugars ASC
LIMIT 5;

-- PRODUCTS WITH HIGH PROTEIN,VITAMINS,POTASSIUM AND SODIUM
SELECT name,mfr,MAX(protein) AS high_protein,MAX(sodium) as high_sodium,MAX(vitamins) as high_vitamins,MAX(potass) as high_potass
FROM 80cereals
GROUP BY name,mfr
ORDER BY high_protein,high_sodium,high_vitamins,high_potass asc
LIMIT 5;

-- Average rating per manufacturer
SELECT mfr, round(AVG( rating),2) AS avg_rating_mfr
FROM 80cereals
GROUP BY mfr
ORDER BY avg_rating_mfr DESC;

-- Best producing shelf manufacturer
SELECT mfr,SUM(shelf) AS sum_shelf_mfr
FROM 80cereals
GROUP BY mfr
ORDER BY sum_shelf_mfr DESC;

--  What is the nutritional value of each cereal according to protein,
SELECT name,protein
FROM 80cereals
ORDER BY protein DESC
LIMIT 10;