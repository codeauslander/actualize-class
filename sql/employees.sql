-- select * from employees;

-- Get all info about employees whose last names begin with “Z”.
-- select * from employees where last_name ilike 'z%';

-- Get the first name and last name of employees whose last names begin with “Mi”.
-- select first_name, last_name from employees where first_name ilike 'Mi%' and last_name ilike 'Mi%';
-- select first_name, last_name from employees where left(last_name,2) = 'Mi';
-- select first_name, last_name from employees where substr(last_name,1,3) = 'Mi';
-- select first_name, last_name from employees where last_name >= 'Mi' and last_name < 'Mj';
-- select first_name, last_name from employees where last_name ~ '^Mi';

-- Get first name,  last name, and birthday of 5 oldest employees.
-- select first_name, last_name, birth_date from employees order by birth_date desc limit 5;

-- Get all info about the 5 most recent hires.
-- select * from employees order by hire_date desc limit 5;

-- Get all info about 5 most recent female hires.
-- select * from employees where gender = 'F' order by hire_date desc limit 5;

-- Bonus: Get all the info on all employees whose first name is Mario or Luigi.
-- select * from employees where first_name ilike 'Mario' or first_name ilike 'Luigi'

-- Bonus: Get only the first and last name of employees without the the last name “Aingworth.”
-- select first_name, last_name from employees where last_name not like 'Aingworth'
-- select first_name, last_name from employees where not last_name = 'Aingworth'
-- select first_name, last_name from employees where last_name <> 'Aingworth'
-- select first_name, last_name from employees where last_name != 'Aingworth'

-- Bonus: Get all the info on employees whose first name is Arif, but only those hired between 1988 and 1992.
-- select * from employees where first_name = 'Arif' and hire_date between '1988-01-01' and '1992-12-31';
-- select * from employees where first_name = 'Arif' and hire_date >= '1989-01-01' and hire_date < '1992-01-01';

-- Bonus: How many employees were making over $100,000 a year on June 24, 1992? Return only a number.
-- select count(*) from salaries where salary > 100000 and '1992-06-24' between from_date and to_date;
-- select count(*) from salaries where salary > 100000 and from_date <= '1992-06-24' and to_date >= '1992-06-24';

-- Bonus: Repeat exercise #2 without using the LIKE keyword.


-- Uber bonus: Research how to do a case-insensitive search in postgres and try it out in Postico




















