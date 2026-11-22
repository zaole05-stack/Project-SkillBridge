from flask import Blueprint, request, session

import Project_logic

projects_api = Blueprint('projects', __name__)


@projects_api.route('/projects', methods=['GET'])
def get_projects():
    projekte = Project_logic.alle_projekte()
    # sqlite3.Row-Objekte für JSON-Ausgabe in dicts umwandeln
    liste = []
    for projekt in projekte:
        liste.append(dict(projekt))
    return {"projects": liste}


@projects_api.route('/projects', methods=['POST'])
def post_projects():
    if "user_id" not in session:
        return {"error": "Bitte zuerst einloggen."}

    # Bei Unternehmen entspricht die user_id der company_id
    company_id = session["user_id"]
    skills = request.form.getlist("skills")

    projekt_id, fehler = Project_logic.projekt_anlegen(company_id, request.form, skills)
    if fehler:
        return {"errors": fehler}

    return {"message": "Projekt erfolgreich angelegt.", "id": projekt_id}


@projects_api.route('/projects/<int:project_id>', methods=['DELETE'])
def delete_project(project_id):
    if "user_id" not in session:
        return {"error": "Bitte zuerst einloggen."}

    geloescht = Project_logic.projekt_loeschen(project_id, session["user_id"])
    if not geloescht:
        return {"error": "Projekt nicht gefunden oder keine Berechtigung."}

    return {"message": f"Projekt {project_id} gelöscht."}