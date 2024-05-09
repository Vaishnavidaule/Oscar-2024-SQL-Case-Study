
/*1)Find the producer names along with the count of movies they have produced that won an award?*/

select m.producer,count(movie_title)as win_count from winners w join movies m on w.movie_title = m.title group by producer;

/*2)Find the names of all movies along with the count of nominations they received and arrange in descending order?*/

select n.movie_title,count(n.movie_title) as nomination_count from nominees n group by n.movie_title order by nomination_count desc;

/*3)Find the names of all producers who have produced movies that were both nominated and won an award?*/

select m.producer,count(n.movie_title)as nominated_movie_count from movies m inner join nominees n on m.title = n.movie_title group by m.producer; 

/*4)Which category Cillian Murphy and Robert Downey Jr. won the award ?*/
select  category ,winner_name from winners where winner_name in ('cilian Murphy','Robert Downey.');


/*5)Retrieve the count of winners for each category from the Winners table?*/
select category ,count(*) as winner_count from winners group by category;

/*6)Find the winners of all categories  for a specific movie?*/
select category,winner_name from winners where movie_title = 'oppenheimer'; 

/*7)List all movies released in a particular year along with their producers?*/
select title ,producer from movies where release_year =2023;

/*8)Retrieve all nominees in the category "Best Picture" for a given year.*/
select nominee_name,movie_title from nominees where category = 'best picture' and year =2024;