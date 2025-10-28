from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    __tablename__ = 'mhs'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nama = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(255), nullable=False)
    telpon = db.Column(db.String(255), nullable=False)
    alamat = db.Column(db.String(255), nullable=False)

    def to_dict(self):
        return {
            "id": self.id,
            "nama": self.nama,
            "email": self.email,
            "telpon": self.telpon,
            "alamat": self.alamat
        }
