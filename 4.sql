INSERT INTO info_depo_track (depot_number, name, parking_spaces, repair_spaces, address, contact_phone)
SELECT d.depot_number,
       d.name,
       d.parking_spaces,
       d.repair_spaces,
       d.address,
       d.contact_phone
FROM depots d
WHERE NOT EXISTS (
    SELECT 1
    FROM tracks t
    WHERE t.depot_number = d.depot_number
      AND (t.purpose ILIKE '%ремонт%' OR t.purpose ILIKE '%repair%')
);
