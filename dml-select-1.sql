## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT *FROM team ORDER BY name ;

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
select * from player where name like 's%' and country not in ('South Africa') order by name desc;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
select event_no,clock_in_seconds from event order by event_no asc;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select event_no from event where raid_points+defecting_points>=3 order by event_no asc;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
    select name from player where country in('india','iran') order by name asc;
    
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
    select name from player where country  not in('india','iran') order by name asc;
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
select * from 

select skill from skill4 where skill like 'd%' order by skill asc;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
        SELECT stadium_name FROM venue WHERE stadium_name LIKE '%Complex' ORDER BY stadium_name asc; 
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
select id,score from outcome where score<35 order by id desc;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT game_date from game where game_date between TO_DATE('01-JAN-2020', 'DD-MM-YYYY') and '31-MAR-2020' ORDER BY game_date desc;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
select name from player where skill_id >1 order by asc;


-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
select event_no,raider_points,defecting _points from event,game where innings_id =1 and game_date =TO_DATE('26-JAN-2020','DD-MM-YYYY') order by events_no asc;
--13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
select winner_team_id from outcome,game,team where game_date=TO_DATE('09-MAR-2020', 'DD-MM-YYYY') order by name asc;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
select name from game game,player,outcome where game_date('09-MAR-2020', 'DD-MM-YYYY') order by player_of_match asc;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
select name from player where skill_id=3 order by name asc;

-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
select stadium_name from game,venue where game_date= TO_DATE('09-MAR-2020','DD-MM-YYYY') order by game.venue_id asc;

-- 17. **Write a query to display the Coach's name of the team `Iran`**
select coach from team,player where country =iran' order by team.name;
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
select event_no,defecting_points from event,player where player.name='Fazel Atrachali' order by event.events_no;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
select name from team,outcome,game where game_date between TO_DATE('01-MAR-2020','DD-MM-YYYY) and '31-MAR-2020' order by team.name
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
select name from player,outcome,game where game_date between TO_DATE('01-MAR-2020','DD-MM-YYYY') and '31-MAR-2020' order by player.name;