# -*- coding: utf-8 -*-
import os
import sqlite3

from flask import Flask, session, request, render_template, url_for

from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, ForeignKey, Sequence
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship, query

from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView
from flask.ext.babel import Babel


Base = declarative_base()

# MODELS
# ======
books_authors = Table(
    "books_authors",
    Base.metadata,
    Column("fk_book", Integer, ForeignKey("books.id")),
    Column("fk_author", Integer, ForeignKey("authors.id")),
)


class Book(Base):
    __tablename__ = "books"

    id = Column("id", Integer, Sequence("books_id_seq"), primary_key=True)
    title = Column("title", String(50), nullable=False)

    authors = relationship(
        "Author",
        backref="books",
        secondary=books_authors
    )


class Author(Base):
    __tablename__ = "authors"

    id = Column("id", Integer, Sequence("authors_id_seq"), primary_key=True)
    name = Column("name", String(50), nullable=False)



# DB CONNECT
# ==========
db_path = 'sqlite:///%s/%s' % (os.path.abspath('.'), 'books/db/books.db')
engine = create_engine(db_path)

Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()


app = Flask(__name__)
babel = Babel(app)

@babel.localeselector
def get_locale():
        return 'ru'

# admin
admin = Admin(app, name='Books')
admin.add_view(ModelView(Book, session))
admin.add_view(ModelView(Author, session))


@app.route('/')
def index():
    book = session.query(Book)
    return render_template('catalog_list.html', book=book)


@app.route('/book/<id>/')
def books(id=1):
    book = session.query(Book).filter_by(id=id)
    return render_template('catalog_item.html', book=book)


@app.errorhandler(404)
def page404(e):
    return render_template('404.html'), 404
