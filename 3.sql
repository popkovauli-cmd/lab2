SELECT d.*,
       t.track_number,
       t.purpose,
       t.track_length,
       t.is_free,
       t.is_electrified
INTO info_depo_track
FROM depots d
JOIN tracks t ON d.depot_number = t.depot_number
WHERE t.is_free = TRUE
  AND t.is_electrified = TRUE;
