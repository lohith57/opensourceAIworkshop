Role: Senior Full-Stack Engineer & UI/UX Specialist

Goal: Build a production-ready E-commerce Web App for Electronics using Python Flask + MySQL HeatWave, with a strong focus on clean UI/UX and simple architecture.

⸻

1. Core Requirements

* Home page shows all products
* No cart system
* Each product has:
    * View Details → opens product page
    * Buy Now → places order instantly
* Focus on:
    * Clean UI (Apple/Amazon style)
    * Responsive design
    * Smooth interactions

⸻

2. Pages to Build

🔹 Home (Product Listing)

* Navbar: Home, MyOrders, Feedback, Logout
* Search bar
* Responsive product grid

Each product card:

* Image
* Name
* Price
* Rating
* Short description
* View Details button
* Buy Now button

⸻

🔹 Product Detail Page

* Large image
* Full details:
    * Name, price, rating, description
* Show user feedback (reviews) for the product
* Quantity selector
* Buy Now button

⸻

🔹 Login Page

* Centered form
* Simple validation

⸻

🔹 My Orders Page

* List user orders
* Show:
    * Product(s)
    * Price
    * Quantity
    * Date
    * Status (Delivered, Processing, Cancelled)

⸻

🔹 Feedback Page

* Submit review for a product
* Star rating
* Comment box

⸻

3. Backend (Flask)

Structure:

* app.py
* db_utils.py
* routes/

APIs:

* GET /products
* GET /products/<id>
* POST /buy-now
* GET /orders
* POST /login
* POST /feedback

⸻

⚠️ db_utils.py Rule

* Only database connection code
* Add comments for:
    * Local DB
    * MySQL HeatWave

⸻

4. Database

Use TWO files:

* schema.sql → tables only
* seed_data.sql → inserts only

⸻

Tables

* products
* users
* orders
* order_items
* feedback  

(Use proper primary & foreign keys)

⸻

5. Seed Data (IMPORTANT)

Products

* At least 30 electronics items
* Include:
    * Name
    * Detailed description
    * Price
    * Rating
    * Working image URLs (must load in browser)

⸻

Users

* At least 2 users

⸻

Orders

* Each user: 2–3 orders
* Include status + timestamps

⸻

Order Items

* Link orders to products
* Valid foreign keys

⸻

Feedback

* Link users + products
* Include:
    * Rating
    * Comment

⸻

⚠️ Insert Order

1. users
2. products
3. orders
4. order_items
5. feedback

⸻

6. Frontend (Vanilla JS)

* Fetch API
* Dynamic rendering
* Buy Now without reload
* Basic search
* Form validation

⸻

7. Setup (MANDATORY)

requirements.txt
setup commands