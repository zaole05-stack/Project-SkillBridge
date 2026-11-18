from flask import Blueprint

projects_api = Blueprint('projects', __name__)


@projects_api.route('/projects', methods=['GET'])
def get_projects():
    return {"projects": []}

@projects_api.route('/projects', methods=['POST'])
def post_projects():
    return {"message": "Project created successfully"}

@projects_api.route('/projects/<int:project_id>', methods=['DELETE'])
def delete_project(project_id):
    return {"message": f"Projekt {project_id} geloescht"}