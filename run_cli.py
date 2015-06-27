from books import app
from books import admin

app.debug = True
app.run(host='0.0.0.0', port=5959)