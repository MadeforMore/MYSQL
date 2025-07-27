Find the average processing time per machine.

✅ Step-by-step Plan:
Separate the start and end times:

For each process, you need the start and end timestamps.

Join start and end records:

Use JOIN to match start and end for each (machine_id, process_id).

Calculate time for each process:

end.timestamp - start.timestamp

Group by machine_id:

For each machine, calculate average time.

Round the result to 3 decimal places.

🧾 SQL Query:
sql
Copy
Edit
SELECT 
    start.machine_id,
    ROUND(AVG(end.timestamp - start.timestamp), 3) AS processing_time
FROM 
    Activity AS start
JOIN 
    Activity AS end
ON 
    start.machine_id = end.machine_id AND
    start.process_id = end.process_id AND
    start.activity_type = 'start' AND
    end.activity_type = 'end'
GROUP BY 
    start.machine_id;
