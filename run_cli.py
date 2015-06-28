from books import app, assets, admin

app.debug = True
assets.debug = True
app.run(host='0.0.0.0', port=5959)