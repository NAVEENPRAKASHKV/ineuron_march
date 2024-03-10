-- SELECT winner_id FROM races that retrieves all winner_id values from the races table.
-- NOT IN operator checks  id values in the runners table are not present in the list of winner_id values 
-- The issue with this query arises due to how databases handle null values. If the winner_id field in the races table contains any null values,
--  the NOT IN operator may behave differntly

SELECT r.* FROM runners as r LEFT JOIN races as rc ON r.id = rc.winner_id
WHERE rc.winner_id IS NULL;
