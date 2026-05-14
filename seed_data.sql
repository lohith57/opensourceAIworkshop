-- seed_data.sql: Seed data for E-commerce App

-- Insert users (at least 2)
-- Using simple string passwords as per feedback
INSERT INTO users (username, email, password_hash) VALUES
('user1', 'user1@example.com', 'password1'),
('user2', 'user2@example.com', 'password2');

-- Insert products (30 electronics items with name, description, price, rating, image_url)
INSERT INTO products (name, description, price, rating, image_url) VALUES
('iPhone 13', 'Latest Apple smartphone with A15 Bionic chip, 128GB storage, and Super Retina XDR display.', 799.99, 4.8, 'https://picsum.photos/seed/iphone13/300/300'),
('Samsung Galaxy S21', 'High-end Android phone with Exynos 2100, 128GB, and Dynamic AMOLED 2X display.', 699.99, 4.7, 'https://picsum.photos/seed/galaxys21/300/300'),
('Sony WH-1000XM4 Headphones', 'Noise-cancelling over-ear headphones with 30-hour battery life.', 349.99, 4.9, 'https://picsum.photos/seed/sonyheadphones/300/300'),
('Dell XPS 13 Laptop', 'Ultrabook with Intel Core i7, 16GB RAM, 512GB SSD, and 13.4-inch InfinityEdge display.', 1299.99, 4.6, 'https://picsum.photos/seed/dellxps13/300/300'),
('Apple MacBook Air M1', 'Lightweight laptop with M1 chip, 8GB RAM, 256GB SSD.', 999.99, 4.8, 'https://picsum.photos/seed/macbookair/300/300'),
('Canon EOS R5 Camera', 'Mirrorless camera with 45MP sensor, 8K video, and in-body stabilization.', 3899.99, 4.7, 'https://picsum.photos/seed/canoneosr5/300/300'),
('Bose QuietComfort Earbuds', 'True wireless earbuds with noise cancellation and 6-hour battery.', 279.99, 4.5, 'https://picsum.photos/seed/boseearbuds/300/300'),
('LG OLED C1 TV', '55-inch 4K OLED TV with Dolby Vision IQ and webOS.', 1499.99, 4.9, 'https://picsum.photos/seed/lgoledtv/300/300'),
('Nintendo Switch OLED', 'Handheld console with 7-inch OLED screen and 64GB storage.', 349.99, 4.6, 'https://picsum.photos/seed/nintendoswitch/300/300'),
('Fitbit Charge 5', 'Fitness tracker with built-in GPS, heart rate monitoring, and stress management.', 179.99, 4.4, 'https://picsum.photos/seed/fitbitcharge5/300/300'),
('Kindle Paperwhite', 'E-reader with 6.8-inch display, adjustable warm light, and 10 weeks battery.', 139.99, 4.7, 'https://picsum.photos/seed/kindlepaperwhite/300/300'),
('GoPro HERO10', 'Action camera with 5.3K video, HyperSmooth 4.0, and waterproof design.', 499.99, 4.8, 'https://picsum.photos/seed/goprohero10/300/300'),
('Dyson V11 Vacuum', 'Cordless vacuum with high torque cleaner head and 60-minute runtime.', 599.99, 4.5, 'https://picsum.photos/seed/dysonv11/300/300'),
('Nest Learning Thermostat', 'Smart thermostat with auto-schedule and energy history.', 249.99, 4.6, 'https://picsum.photos/seed/nestthermostat/300/300'),
('Ring Video Doorbell', '1080p HD video doorbell with motion detection and two-way talk.', 99.99, 4.3, 'https://picsum.photos/seed/ringdoorbell/300/300'),
('Philips Hue Starter Kit', 'Smart lighting kit with 3 bulbs and bridge, compatible with Alexa.', 199.99, 4.7, 'https://picsum.photos/seed/philipshue/300/300'),
('Logitech MX Master 3 Mouse', 'Wireless mouse with ergonomic design and ultra-fast scrolling.', 99.99, 4.8, 'https://picsum.photos/seed/logitechmouse/300/300'),
('Corsair K95 Keyboard', 'Mechanical gaming keyboard with RGB lighting and macro keys.', 199.99, 4.6, 'https://picsum.photos/seed/corsairkeyboard/300/300'),
('Anker PowerCore Portable Charger', '20000mAh battery pack with PowerIQ and VoltageBoost.', 49.99, 4.5, 'https://picsum.photos/seed/ankercharger/300/300'),
('Echo Dot (4th Gen)', 'Smart speaker with Alexa, compact design.', 49.99, 4.7, 'https://picsum.photos/seed/echodot/300/300'),
('iPad Air (5th Gen)', 'Tablet with M1 chip, 10.9-inch Liquid Retina display, 64GB.', 599.99, 4.8, 'https://picsum.photos/seed/ipadair/300/300'),
('Surface Pro 8', '2-in-1 laptop with Intel Core i5, 8GB RAM, 128GB SSD.', 1099.99, 4.6, 'https://picsum.photos/seed/surfacepro8/300/300'),
('Bose SoundLink Speaker', 'Portable Bluetooth speaker with 8-hour battery and water resistance.', 129.99, 4.5, 'https://picsum.photos/seed/bosespeaker/300/300'),
('Garmin Forerunner 245', 'GPS running watch with advanced training features.', 299.99, 4.7, 'https://picsum.photos/seed/garminwatch/300/300'),
('Roku Streaming Stick 4K', 'Streaming device with 4K HDR and long-range wireless.', 49.99, 4.6, 'https://picsum.photos/seed/rokustick/300/300'),
('Netgear Nighthawk Router', 'AX6 Wi-Fi 6 router with 1.5Gbps speeds and MU-MIMO.', 229.99, 4.4, 'https://picsum.photos/seed/netgearrouter/300/300'),
('Oculus Quest 2', 'All-in-one VR headset with 128GB storage.', 299.99, 4.8, 'https://picsum.photos/seed/oculusquest2/300/300'),
('DJI Mini 2 Drone', 'Ultra-light drone with 4K camera and 31-minute flight time.', 449.99, 4.7, 'https://picsum.photos/seed/djimini2/300/300'),
('KitchenAid Stand Mixer', '5-quart mixer with 10 speeds and tilt-head design.', 379.99, 4.9, 'https://picsum.photos/seed/kitchenaidmixer/300/300'),
('Instant Pot Duo', '7-in-1 pressure cooker with 6-quart capacity.', 99.99, 4.6, 'https://picsum.photos/seed/instantpot/300/300');

-- Insert orders (2-3 per user)
-- User 1 orders
INSERT INTO orders (user_id, total_price, status, created_at) VALUES
(1, 799.99, 'Processing', '2023-01-01 10:00:00'),
(1, 349.99, 'Delivered', '2023-02-01 11:00:00'),
(1, 1299.99, 'Cancelled', '2023-03-01 12:00:00');

-- User 2 orders
INSERT INTO orders (user_id, total_price, status, created_at) VALUES
(2, 699.99, 'Processing', '2023-01-02 10:00:00'),
(2, 999.99, 'Delivered', '2023-02-02 11:00:00');

-- Insert order_items (linking to products)
-- Order 1: iPhone 13
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (1, 1, 1, 799.99);
-- Order 2: Sony Headphones
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (2, 3, 1, 349.99);
-- Order 3: Dell XPS 13
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (3, 4, 1, 1299.99);
-- Order 4: Samsung Galaxy S21
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (4, 2, 1, 699.99);
-- Order 5: MacBook Air
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (5, 5, 1, 999.99);

-- Insert feedback (some entries)
INSERT INTO feedback (user_id, product_id, rating, comment, created_at) VALUES
(1, 1, 5, 'Great phone!', '2023-01-10 10:00:00'),
(1, 3, 4, 'Good noise cancellation.', '2023-02-10 11:00:00'),
(2, 2, 5, 'Excellent display.', '2023-01-11 10:00:00'),
(2, 5, 4, 'Fast performance.', '2023-02-11 11:00:00');