use AMAZON;
select * from amazon_reviews;
-- 1.Finding where the rating is greater than 4.
select *
from amazon_reviews 
where rating = 4;

-- 2.Finding out the review length is greater than 100.
select * 
from amazon_reviews
where review_length =100;

-- 3.Total Number of Products
SELECT COUNT(*) AS total_products
FROM amazon_reviews;

-- 4.Highest Rated Product in Each Category
SELECT categories, MAX(rating) AS highest_rating
FROM amazon_reviews
GROUP BY categories;

-- 5.Categories Having Average Rating Greater Than 4
SELECT categories, AVG(rating) AS avg_rating
FROM amazon_reviews
GROUP BY categories
HAVING AVG(rating) > 4;