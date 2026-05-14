# E-commerce Web App

Production-ready E-commerce application for electronics using Python Flask and MySQL (compatible with HeatWave).

## Setup Instructions

1. **Install dependencies**:
   ```
   pip install -r requirements.txt
   ```

2. **Update database credentials**:
   - Edit `db_utils.py` to set the correct `host`, `user`, `password`, and `database`.
   - For local MySQL, use 'localhost' and your local credentials.
   - For MySQL HeatWave, use the cloud endpoint and add SSL configurations if needed.

3. **Create and seed the database** (for local MySQL):
   ```
   mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ecommerce_db;"
   mysql -u root -p ecommerce_db < schema.sql
   mysql -u root -p ecommerce_db < seed_data.sql
   ```
   - Replace `root` and provide password when prompted.
   - For HeatWave, use the appropriate cloud CLI or management console to run the SQL files.

4. **Run the application**:
   ```
   python app.py
   ```
   - Access at http://localhost:5000
   - Login with seeded users (e.g., user1@example.com / password1)

## Features
- Product listing with search
- Product details with feedback
- Instant Buy Now
- Order history
- Feedback submission
- Responsive UI