from flask import Blueprint
projects_api = Blueprint('projects_api', __name__, url_prefix='/projekte')


@projects_api.route('/projekte_api', methods=['GET', 'POST'])
def get_projects():
    return "Projekte API: Get Projects Endpoint"