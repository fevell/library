import os
basedir = os.path.abspath(os.path.dirname(__file__))

# CSRF_ENABLED = True
SECRET_KEY = '9ab55dfb-5396-4644-9e60-42f381a65e15'
STATIC_FOLDER = 'static'

# OPENID_PROVIDERS = [
#     {'name': 'Google', 'url': 'https://www.google.com/accounts/o8/id'},
#     {'name': 'Yahoo', 'url': 'https://me.yahoo.com'},
#     {'name': 'AOL', 'url': 'http://openid.aol.com/<username>'},
#     {'name': 'Flickr', 'url': 'http://www.flickr.com/<username>'},
#     {'name': 'MyOpenID', 'url': 'https://www.myopenid.com'}]


SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'books/db/books.db')
# SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')
# WHOOSH_BASE = os.path.join(basedir, 'books/db/search.db')

# mail server settings
# MAIL_SERVER = 'localhost'
# MAIL_PORT = 25
# MAIL_USERNAME = None
# MAIL_PASSWORD = None

# administrator list
ADMINS = ['sergey.soroka@me.com']

USER = 'sergey'
PASS = 'fender8989'

# pagination
BOOKS_PER_PAGE = 12
MAX_SEARCH_RESULTS = 60

ASSETS_DEBUG = True