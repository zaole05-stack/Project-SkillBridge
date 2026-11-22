from flask import Blueprint

chats_api = Blueprint('chats', __name__)


@chats_api.route('/chats', methods=['GET'])
def get_chats():
    return {"chats": []}

@chats_api.route('/chats', methods=['POST'])
def post_chat():
    return {"message": "Chat created successfully"}

@chats_api.route('/chats/<int:chat_id>', methods=['DELETE'])
def delete_chat(chat_id):
    return {"message": f"Chat {chat_id} deleted"}