from flask import Blueprint

profile_api = Blueprint('profile', __name__)


@profile_api.route('/profile', methods=['GET'])
def get_profile():
    return {"profile": []}

@profile_api.route('/profile', methods=['POST'])
def post_profile():
    return {"message": "Profile created successfully"}

@profile_api.route('/profile/<int:profile_id>', methods=['DELETE'])
def delete_profile(profile_id):
    return {"message": f"Profile {profile_id} deleted"}