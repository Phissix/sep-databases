--Question #2
DROP TABLE donations;

CREATE TABLE donations(
	id integer primary key,
	donor text,
	amount integer,
	donation_date date
);

INSERT INTO donations (id, donor, amount, donation_date) VALUES
	(1, 'Daenerys', 102, '2017-03-22'),
	(2, 'Missandei', 25, '2017-03-23'),
	(3, 'Missandei', 30, '2017-03-24'),
	(4, 'Daenerys', 71, '2017-03-25'),
	(5, 'Tyrion', 60, '2017-03-26'),
	(6, 'Sansa', 33, '2017-03-27'),
	(7, 'Jon', 25, '2017-03-28'),
	(8, 'Missandei', 10, '2017-03-29'),
	(9, 'Arya', 15, '2017-03-30'),
	(10, 'Tormund', 50, '2017-03-31'),
	(11, 'Bran', 25, '2017-04-01'),
	(12, 'Arya', 30, '2017-04-02'),
	(13, 'Brienne', 75, '2017-04-03'),
	(14, 'Margaery', 120, '2017-04-04'),
	(15, 'Samwell', 20, '2017-04-05'),
	(16, 'Melisandre', 45, '2017-04-06'),
	(17, 'Petyr', 70, '2017-04-07'),
	(18, 'Theon', 5, '2017-04-08'),
	(19, 'Bronn', 20, '2017-04-09'),
	(20, 'Daario', 10, '2017-04-10'),
	(21, 'Gilly', 7, '2017-04-11'),
	(22, 'Ygritte', 30, '2017-04-12'),
	(23, 'Tyrion', 50, '2017-04-13'),
	(24, 'Arya', 15, '2017-04-14'),
	(25, 'Tyrion', 10, '2017-04-15'),
	(26, 'Missandei', 25, '2017-04-16'),
	(27, 'Theon', 15, '2017-04-17');
