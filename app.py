from flask import Flask, session, redirect, url_for, request
import os

app = Flask(__name__)
app.secret_key = os.urandom(24)  # Secret key for sessions

# Import db_utils
from db_utils import get_db_connection

# Register blueprints from routes
from routes.products import products_bp
from routes.orders import orders_bp
from routes.auth import auth_bp
from routes.feedback import feedback_bp
from routes.chatbot import chatbot_bp

app.register_blueprint(products_bp)
app.register_blueprint(orders_bp)
app.register_blueprint(auth_bp)
app.register_blueprint(feedback_bp)
app.register_blueprint(chatbot_bp)

# Home route redirect to products
@app.route('/')
def home():
    if 'user_id' in session:
        return redirect(url_for('products.get_products'))
    return redirect(url_for('auth.login'))

if __name__ == '__main__':
    app.run(debug=True)