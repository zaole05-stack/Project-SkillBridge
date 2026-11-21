import os
from flask import Flask, render_template, redirect, url_for, session, request
import db

#import der Api Blueprints aus den jeweiligen Dateien
from api.projects import projects_api  
from api.chat import chats_api
from api.profile import profile_api
#from api.session import session_token

from werkzeug.security import check_password_hash
from dotenv import load_dotenv
from functools import wraps

load_dotenv() # für Session um den Secret Key aus der .env Datei zu laden

app = Flask(__name__)
app.secret_key = os.environ["SECRET_KEY"] #setzt den Secret Key aus der .env Datei

#einbindung der Routen aus dem blueprint für Projekte
app.register_blueprint(projects_api, url_prefix='/api')
app.register_blueprint(chats_api, url_prefix='/api')
app.register_blueprint(profile_api, url_prefix='/api')
#app.register_blueprint(session_token, url_prefix='/api')

# legt Pfad und Dateinamen der SQLite-Datenbank im instance-Ordner fest
app.config.from_mapping(
    DATABASE = os.path.join(app.instance_path, 'skillbridge.sqlite')
)

# erstellst die Funktion als CLI-Befehl (damit im Terminal der Befehl 'flask init-db' funktioniert)
app.cli.add_command(db.init_db)

# Flask ruft Funktion auf, sobald jeweiliger Anwendungskontext beendet wird
app.teardown_appcontext(db.close_db_con)


def login_required(view):
    @wraps(view)
    def wrapped_view(**kwargs):
        if "user_id" not in session:
            return redirect(url_for("login"))
        return view(**kwargs)
    return wrapped_view


@app.route("/")
def index():
    if "user_id" in session:
        return redirect(url_for("dashboard"))
    return redirect(url_for("login"))

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        email = request.form.get("email", "").strip()
        password = request.form.get("password", "")

        db_con = db.get_db_con()

        user = db_con.execute(
            "SELECT * FROM user WHERE email = ?",
            (email,)
        ).fetchone()

        if user is None or not check_password_hash(user["password_hash"], password):
            return "E-Mail oder Passwort ist falsch."

        session.clear()
        session["user_id"] = user["id"]
        return redirect(url_for("dashboard"))
        
    return render_template("login.html")

@app.route("/logout", methods=["POST"])
@login_required
def logout():
    session.clear()
    return redirect(url_for("login"))

@app.route("/dashboard")
@login_required
def dashboard():
    return render_template("dashboard.html")

@app.route("/search")
@login_required
def search():
    return render_template("search.html")

@app.route("/projects")
@login_required
def projects():
    return render_template("projects.html")

@app.route("/chat")
@login_required
def chat():
    return render_template("chat.html")

@app.route("/settings")
@login_required
def settings():
    return render_template("settings.html")

@app.route("/profile")
@login_required
def profile():
    return render_template("profile.html")



if __name__ == "__main__":
    app.run(debug=True)