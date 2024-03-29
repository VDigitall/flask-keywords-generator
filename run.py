from werkzeug.contrib.fixers import ProxyFix
from app.app import create_app


app = create_app()
app.wsgi_app = ProxyFix(app.wsgi_app)


if __name__ == '__main__':
    app.run(host="0.0.0.0")
