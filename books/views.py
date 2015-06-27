from books import app

from flask import Flask, session, request, render_template, url_for, send_from_directory, redirect
from .models import session, books_authors, Book, Author

# from config import basedir, SECRET_KEY, STATIC_FOLDER, SQLALCHEMY_DATABASE_URI, WHOOSH_BASE, \
#     ADMINS, BOOKS_PER_PAGE, MAX_SEARCH_RESULTS

from config import STATIC_FOLDER, BOOKS_PER_PAGE

from htmlmin import minify

@app.route('/')
@app.route('/page/<int:page>/')
def index(page = 1):

    books = session.query(Book, Author).join(books_authors, Author).order_by(Author.name, Book.title)

    books_count = books.count()

    per_page = BOOKS_PER_PAGE

    page_from = int(page * per_page)
    page_next = int(page_from + per_page)
    books_page = books.slice(page_from, page_next)

    books_limit = abs(books_count/per_page)
    rendered_html = render_template('catalog_list.html',
                                    books=books_page,
                                    page=page,
                                    page_from=page_from,
                                    page_next=page_next,
                                    books_count=books_count,
                                    per_page=per_page,
                                    books_limit=books_limit)
    return minify(rendered_html, remove_optional_attribute_quotes=False, remove_empty_space=True)

@app.route('/page/')
def first_page_prev():
    return redirect(url_for('index'), code=301)

@app.route('/book/<id>/')
def books(id = 1):
    book = session.query(Book).filter_by(id=id)
    rendered_html = render_template('catalog_item.html', book=book)
    return minify(rendered_html)

@app.route('/robots.txt')
def static_from_root():
    return send_from_directory(STATIC_FOLDER, request.path[1:])

@app.errorhandler(404)
def page404(e):
    return render_template('404.html'), 404
