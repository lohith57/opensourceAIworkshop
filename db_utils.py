import mysql.connector

def get_db_connection():
    """
    Returns a MySQL database connection.
    
    # For Local DB:
    # - Host: 'localhost'
    # - User: Your local MySQL username (e.g., 'root')
    # - Password: Your local MySQL password
    # - Database: The name of your local database (e.g., 'ecommerce_db')
    
    # For MySQL HeatWave:
    # - Host: The endpoint URL provided by Oracle Cloud for your HeatWave instance
    # - User: The database user configured in HeatWave
    # - Password: The corresponding password
    # - Database: The database name in HeatWave
    # - Additional params: May include port (default 3306), ssl_ca, etc., for secure cloud connections
    """
    config = {
        'host': 'localhost',  # Change to HeatWave endpoint for cloud deployment
        'user': 'ECOM_USER',       # Replace with actual user
        'password': 'Oracle@12345',       # Replace with actual password
        'database': 'C_DEMO'  # Database name
    }
    
    # For HeatWave, add SSL if required:
    # config['ssl_ca'] = '/path/to/ca-cert.pem'
    
    try:
        connection = mysql.connector.connect(**config)
        return connection
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None