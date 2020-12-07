from app import app
from flask import render_template

@app.route('/')
def home():
    return "hello world!! I changed the description and it will automatically reload."

@app.route('/homepage')
def template():
    return render_template('home.html')
