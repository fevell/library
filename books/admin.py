from books import app
from books.views import Book, Author, session

from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView
admin = Admin(app, name='Books')
admin.add_view(ModelView(Book, session))
admin.add_view(ModelView(Author, session))