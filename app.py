import os

from flask import Flask, render_template

import db
#import der Api Blueprints aus den jeweiligen Dateien
from api.projects import projects_api  
from api.chat import chats_api
from api.profile import profile_api
from api.session import session_token

app = Flask(__name__)
#einbindung der Routen aus dem blueprint für Projekte
app.register_blueprint(projects_api, url_prefix='/api')
app.register_blueprint(chats_api, url_prefix='/api')
app.register_blueprint(profile_api, url_prefix='/api')
app.register_blueprint(session_token, url_prefix='/api')

# legt Pfad und Dateinamen der SQLite-Datenbank im instance-Ordner fest
app.config.from_mapping(
    DATABASE = os.path.join(app.instance_path, 'skillbridge.sqlite')
)

# erstellst die Funktion als CLI-Befehl (damit im Terminal der Befehl 'flask init-db' funktioniert)
app.cli.add_command(db.init_db)

# Flask ruft Funktion auf, sobald jeweiliger Anwendungskontext beendet wird
app.teardown_appcontext(db.close_db_con)


@app.route("/")
def login():
    return render_template("login.html")

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")

@app.route("/search")
def search():
    return render_template("search.html")

@app.route("/projects")
def projects():
    return render_template("projects.html")

@app.route("/chat")
def chat():
    return render_template("chat.html")

@app.route("/settings")
def settings():
    return render_template("settings.html")

@app.route("/profile")
def profile():
    return render_template("profile.html")



if __name__ == "__main__":
    app.run(debug=True)