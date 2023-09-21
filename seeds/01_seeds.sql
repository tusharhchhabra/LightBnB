INSERT INTO users (name, email, PASSWORD)
VALUES (
    'Alice',
    'alice@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
'
  ),
  (
    'Bob',
    'bob@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
'
  ),
  (
    'Charlie',
    'charlie@example.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
'
  );
INSERT INTO properties (
    owner_id,
    title,
    description,
    thumbnail_photo_url,
    cover_photo_url,
    cost_per_night,
    parking_spaces,
    number_of_bathrooms,
    number_of_bedrooms,
    country,
    street,
    city,
    province,
    post_code,
    active
  )
VALUES (
    1,
    'Cozy Cottage',
    'description1',
    'thumbnail1.jpg',
    'cover1.jpg',
    120,
    1,
    1,
    2,
    'USA',
    '123 Main St',
    'Townsville',
    'CA',
    '12345',
    TRUE
  ),
  (
    2,
    'Beach House',
    'description2',
    'thumbnail2.jpg',
    'cover2.jpg',
    250,
    2,
    2,
    3,
    'USA',
    '456 Ocean Dr',
    'Beachtown',
    'FL',
    '67890',
    TRUE
  ),
  (
    3,
    'Mountain Cabin',
    'description3',
    'thumbnail3.jpg',
    'cover3.jpg',
    100,
    0,
    1,
    1,
    'USA',
    '789 Mountain Rd',
    'Hillville',
    'CO',
    '11223',
    TRUE
  );
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2023-10-01', '2023-10-07', 1, 2),
  ('2023-11-15', '2023-11-20', 2, 3),
  ('2023-12-01', '2023-12-15', 3, 1);
INSERT INTO property_reviews (
    guest_id,
    property_id,
    reservation_id,
    rating,
    message
  )
VALUES (2, 1, 1, 5, 'message1'),
  (3, 2, 2, 4, 'message2'),
  (1, 3, 3, 5, 'message3');