SELECT d.depot_number,
       d.name AS depot_name,
       COUNT(t.track_number) AS tracks_count,
       ROUND(AVG(t.track_length), 2) AS avg_length
FROM depots d
LEFT JOIN tracks t ON d.depot_number = t.depot_number
GROUP BY d.depot_number, d.name
ORDER BY d.depot_number;
