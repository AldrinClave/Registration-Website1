import os
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from werkzeug.security import generate_password_hash

app = Flask(__name__)
app.secret_key = 'Clave'

app.config['SQLALCHEMY_DATABASE_URI'] = (
    f"mysql+pymysql://{os.environ['MYSQLUSER']}:"
    f"{os.environ['MYSQLPASSWORD']}@"
    f"{os.environ['MYSQLHOST']}:"
    f"{os.environ['MYSQLPORT']}/"
    f"{os.environ['MYSQLDATABASE']}"
)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    birthday = db.Column(db.Date, nullable=False)
    age = db.Column(db.Integer, nullable=False)
    username = db.Column(db.String(100), unique=True, nullable=False)
    email = db.Column(db.String(150), unique=True, nullable=False)
    password = db.Column(db.String(200), nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)

def calculate_age(birthday):
    today = datetime.now().date()
    age = today.year - birthday.year - ((today.month, today.day) < (birthday.month, birthday.day))
    return age

@app.route('/')
def home():
    return render_template('register.html')

@app.route('/register', methods=['POST'])
def register():
    birthday_str = request.form.get('birthday')
    username = request.form.get('username')
    email = request.form.get('email')
    password = request.form.get('password')
    confirm_password = request.form.get('confirm_password')

    if password != confirm_password:
        flash('Passwords do not match!', 'error')
        return redirect(url_for('home'))

    try:
        birthday = datetime.strptime(birthday_str, '%Y-%m-%d').date()
    except ValueError:
        flash('Invalid birthday format!', 'error')
        return redirect(url_for('home'))

    age = calculate_age(birthday)

    existing_user = User.query.filter(
        (User.username == username) | (User.email == email)
    ).first()

    if existing_user:
        flash('Username/Email already exists!', 'error')
        return redirect(url_for('home'))

    hashed_password = generate_password_hash(password)
    new_user = User(birthday=birthday, age=age, username=username, email=email, password=hashed_password)

    try:
        db.session.add(new_user)
        db.session.commit()
        return redirect(url_for('success'))
    except Exception as e:
        db.session.rollback()
        flash(str(e), 'error')
        return redirect(url_for('home'))

@app.route('/success')
def success():
    return render_template('success.html')

@app.route('/users')
def users():
    users = User.query.all()
    return render_template('users.html', users=users)

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
