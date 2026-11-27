DELETE FROM info_depo_track
WHERE depot_number IN (
    SELECT DISTINCT depot_number
    FROM tracks
    WHERE is_free = TRUE
);
