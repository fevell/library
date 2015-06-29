from flask import (Flask, session, request, render_template, url_for,
                   send_from_directory, redirect)

from htmlmin import minify

from books import app
from .models import session, books_authors, Book, Author, User
from .forms import SigninForm, SearchForm
from config import STATIC_FOLDER, BOOKS_PER_PAGE


import datetime
now = datetime.datetime.now()
year = now.year


admin = session.query(User).first()
books_count = session.query(Book, Author).join(books_authors, Author).order_by(Author.name, Book.title).group_by(Book.id).count()

@app.route('/')
@app.route('/page/<int:page>/')
def index(page=1):
    search_form = SearchForm()
    per_page = BOOKS_PER_PAGE

    books = session.query(Book, Author).join(
        books_authors, Author).order_by(Author.name, Book.title).group_by(Book.id)

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
                                    books_limit=books_limit,
                                    now_year=year,
                                    admin=admin,
                                    search_form=search_form)
    return minify(rendered_html,
                  remove_optional_attribute_quotes=False,
                  remove_empty_space=True)


@app.route('/page/')
def first_page_prev():
    return redirect(url_for('index'), code=301)


@app.route('/book/<int:id>/')
def book_item(id=1):
    search_form = SearchForm()

    book = session.query(Book, Author).join(books_authors, Author).filter(Book.id == id)
    rendered_html = render_template('catalog_item.html',
                                     book=book,
                                     books_count=books_count,
                                     now_year=year,
                                     admin=admin,
                                     search_form=search_form)
    return minify(rendered_html,
                  remove_optional_attribute_quotes=False,
                  remove_empty_space=True)


@app.route('/signin', methods=['GET', 'POST'])
def signin():
    search_form = SearchForm()
    form = SigninForm()
    if request.method == 'POST':
        if form.validate() == False:
            rendered_html = render_template('signin.html',
                                    form=form,
                                    search_form=search_form,
                                    books_count=books_count,
                                    now_year=year,
                                    admin=admin)
            return minify(rendered_html,
                          remove_optional_attribute_quotes=False,
                          remove_empty_space=True)
        else:
            return redirect(url_for('index'))
    elif request.method == 'GET':
        rendered_html = render_template('signin.html',
                                form=form,
                                search_form=search_form,
                                books_count=books_count,
                                now_year=year,
                                admin=admin)
        return minify(rendered_html,
                      remove_optional_attribute_quotes=False,
                      remove_empty_space=True)



@app.route('/search', methods=['GET', 'POST'])
def search(query=None):
    search_form = SearchForm()

    if request.method == "POST":
        query = request.form['search']
        search_by = int(request.form['search_by'])
        search_results = None

        if search_by == 1:
            search_results = session.query(Book, Author).join(books_authors, Author).filter(Book.title.ilike('%'+query+'%')).all()
        else:
            search_results = session.query(Book, Author).join(books_authors, Author).filter(Author.name.ilike('%'+query+'%')).all()

        rendered_html = render_template("search_results.html",
                                        query=query,
                                        search_results=search_results,
                                        search_form=search_form,
                                        admin=admin,
                                        books_count=books_count)
        return minify(rendered_html,
                      remove_optional_attribute_quotes=False,
                      remove_empty_space=True)
    return redirect(url_for('index'))

@app.route('/robots.txt')
def static_from_root():
    return send_from_directory(STATIC_FOLDER, request.path[1:])


@app.errorhandler(404)
def page404(e):
    return render_template('404.html'), 404
