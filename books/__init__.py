import os
from flask import Flask

app = Flask(__name__)
app.config.from_object('config')

from books import views, models
from books import assets
