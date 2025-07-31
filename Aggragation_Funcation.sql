

SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1       -- odd-numbered ID
  AND description != 'boring'  -- description is not boring
ORDER BY rating DESC;       -- order by rating in descending order
