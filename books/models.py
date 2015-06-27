from books import app

from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, ForeignKey, Sequence
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

from config import SQLALCHEMY_DATABASE_URI

import sys
if sys.version_info >= (3, 0):
    enable_search = False
else:
    enable_search = True
    import flask.ext.whooshalchemy as whooshalchemy

Base = declarative_base()

import os
engine = create_engine(SQLALCHEMY_DATABASE_URI)

Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()

books_authors = Table(
    'books_authors',
    Base.metadata,
    Column('fk_book', Integer, ForeignKey('books.id')),
    Column('fk_author', Integer, ForeignKey('authors.id')),
)


class Book(Base):
    __tablename__ = 'books'
    __searchable__ = ['title']
    # __analyzer__ = SimpleAnalyzer()

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

if enable_search:
    whooshalchemy.whoosh_index(app, Book)