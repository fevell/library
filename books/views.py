from flask import (Flask, session, request, render_template, url_for,
                   send_from_directory, redirect)
from books import app
from .models import session, books_authors, Book, Author
from config import STATIC_FOLDER, BOOKS_PER_PAGE, USER, PASS

from htmlmin import minify


@app.route('/')
@app.route('/page/<int:page>/')
def index(page=1):

    books = session.query(Book, Author).join(
        books_authors, Author).order_by(Author.name, Book.title)

    books_count = books.count()

    per_page = BOOKS_PER_PAGE

    page_from = int(page * per_page)
    page_next = int(page_from + per_page)
    books_page = books.slice(page_from, page_next)

    books_limit = abs(books_count/per_page)
    rendered_html = render_template('catalog_list.html',
                                    meta_title="The Library",
                                    books=books_page,
                                    page=page,
                                    page_from=page_from,
                                    page_next=page_next,
                                    books_count=books_count,
                                    per_page=per_page,
                                    books_limit=books_limit)
    return minify(rendered_html,
                  remove_optional_attribute_quotes=False,
                  remove_empty_space=True)


@app.route('/page/')
def first_page_prev():
    return redirect(url_for('index'), code=301)


@app.route('/book/<int:id>/')
def book_item(id=1):
    book = session.query(Book, Author).join(books_authors, Author).filter(Book.id == id)
    books_count = session.query(Book).count()
    rendered_html = render_template('catalog_item.html', book=book, books_count=books_count)
    return minify(rendered_html,
                  remove_optional_attribute_quotes=False,
                  remove_empty_space=True)


@app.route('/login/', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        if request.form['username'] != USER:
            error = 'Invalid username'
        elif request.form['password'] != PASS:
            error = 'Invalid password'
        else:
            session['logged_in'] = True
            flash('You were logged in')
            return redirect(url_for('show_entries'))
    else:
        return redirect(url_for('index'))
    return render_template('login.html', error=error)


@app.route('/logout/')
def logout():
    session.pop('logged_in', None)
    flash('You were logged out')
    return redirect(url_for('show_entries'))


@app.route('/robots.txt')
def static_from_root():
    return send_from_directory(STATIC_FOLDER, request.path[1:])


@app.errorhandler(404)
def page404(e):
    return render_template('404.html'), 404
