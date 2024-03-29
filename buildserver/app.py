from flask import Flask

LISTEN_HOST = "0.0.0.0"


def create_app():
    app = Flask(__name__)

    @app.route("/")
    def index():
        return "Hello from EnergyHub!"

    return app


if __name__ == "__main__":
    app = create_app()
    app.run(host=LISTEN_HOST)
