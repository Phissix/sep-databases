SELECT SUM(amount) FROM donations;

SELECT SUM(amount) AS total_amount, donor FROM donations GROUP BY donor;

SELECT AVG(amount) AS avg_donation, donor FROM donations GROUP BY donor;

SELECT COUNT(amount) FROM donations WHERE amount > 100;

SELECT MAX(amount) FROM donations;

SELECT MIN(amount) FROM donations;
