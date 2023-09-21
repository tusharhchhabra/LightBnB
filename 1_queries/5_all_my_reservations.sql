SELECT reservations.id,
  properties.title,
  start_date,
  cost_per_night,
  avg(rating) AS average_rating
FROM reservations
  JOIN properties ON properties.id = reservations.property_id
  JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;