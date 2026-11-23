SELECT DISTINCT d.*
FROM depots d
JOIN tracks t ON d.depot_number = t.depot_number
WHERE t.is_free = TRUE
  AND t.is_electrified = TRUE;
