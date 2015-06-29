from flask.ext.assets import Environment, Bundle
from books import app

assets = Environment(app)
assets.url = app.static_url_path

scss = Bundle(
    'assets/scss/app.scss',
    filters=['pyscss','cssmin'],
    output='app.min.css'
)
assets.register('styles', scss)

js = Bundle(
    'assets/js/vendor/jquery.js',
    'assets/js/vendor/fancybox.js',
    'assets/js/app.js',
    filters=['jsmin'],
    output='app.min.js'
)
assets.register('scripts', js)