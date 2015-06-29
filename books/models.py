from books import app
from config import SQLALCHEMY_DATABASE_URI

from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, ForeignKey, Sequence
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship
from werkzeug import generate_password_hash, check_password_hash
import os

Base = declarative_base()
engine = create_engine(SQLALCHEMY_DATABASE_URI)
Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()

class User(Base):
    __tablename__ = 'users'
    uid = Column(Integer, primary_key=True)
    firstname = Column(String(100))
    lastname = Column(String(100))
    email = Column(String(120), unique=True)
    pwdhash = Column(String(54))

    def __init__(self, firstname, lastname, email, password):
        self.firstname = firstname.title()
        self.lastname = lastname.title()
        self.email = email.lower()
        self.set_password(password)

    def set_password(self, password):
        self.pwdhash = generate_password_hash(password)

    def check_password(self, password):
      return check_password_hash(self.pwdhash, password)


books_authors = Table(
    'books_authors',
    Base.metadata,
    Column('fk_book', Integer, ForeignKey('books.id')),
    Column('fk_author', Integer, ForeignKey('authors.id')),
)

class Book(Base):
    __tablename__ = 'books'
    __searchable__ = ['title']

    id = Column('id', Integer, Sequence('books_id_seq'), primary_key=True)
    title = Column('title', String(50), nullable=False)

    authors = relationship(
        'Author',
        backref='books',
        secondary=books_authors
    )


class Author(Base):
    __tablename__ = 'authors'
    __searchable__ = ['name']

    id = Column('id', Integer, Sequence('authors_id_seq'), primary_key=True)
    name = Column('name', String(50), nullable=False)