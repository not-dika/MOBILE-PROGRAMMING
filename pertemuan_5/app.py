from flask import Flask, request, jsonify
from models import db, User

app = Flask(__name__)

# Database configuration (use your credentials)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/test_api'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db.init_app(app)

with app.app_context():
    db.create_all()

# ---------- CRUD Routes ----------

# GET all users
@app.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    return jsonify([u.to_dict() for u in users])

# GET single user
@app.route('/users/<int:id>', methods=['GET'])
def get_user(id):
    user = User.query.get_or_404(id)
    return jsonify(user.to_dict())

# POST create new user
@app.route('/users', methods=['POST'])
def add_user():
    data = request.json
    new_user = User(
        nama=data['nama'],
        email=data['email'],
        telpon=data['telpon'],
        alamat=data['alamat']
    )
    db.session.add(new_user)
    db.session.commit()
    return jsonify(new_user.to_dict()), 201

# PATCH update existing user
@app.route('/users/<int:id>', methods=['PATCH'])
def update_user(id):
    user = User.query.get_or_404(id)
    data = request.json
    for key in ['nama', 'email', 'telpon', 'alamat']:
        if key in data:
            setattr(user, key, data[key])
    db.session.commit()
    return jsonify(user.to_dict())

# DELETE a user
@app.route('/users/<int:id>', methods=['DELETE'])
def delete_user(id):
    user = User.query.get_or_404(id)
    db.session.delete(user)
    db.session.commit()
    return jsonify({'message': 'User deleted successfully'})

if __name__ == '__main__':
    app.run(debug=True)
