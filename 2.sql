SELECT t.*
FROM tracks t
JOIN depots d ON t.depot_number = d.depot_number
WHERE d.name ILIKE '%Краснопресненск%'
  AND t.is_free = TRUE
  AND t.track_length > 100;
