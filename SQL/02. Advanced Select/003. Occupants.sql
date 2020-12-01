https://www.hackerrank.com/challenges/occupations/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select doctor,professor,singer,actor from (select * from (select Name, occupation, (ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name)) as row_num from occupations order by name asc) pivot ( min(name) for occupation in ('Doctor' as doctor,'Professor' as professor,'Singer' as singer,'Actor' as actor)) order by row_num);
