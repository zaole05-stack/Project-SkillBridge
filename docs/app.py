from flask import Flask

app =Flask(__name__)
@app.route('/') 

def index():
    return "Hello world"

@app.route('/Lists/')
def lists():
    return "TODO: This is the lists page"

@app.route('/list/<int:id>/')

def list_detail(id):
    return f'TODO: ... page fo lsit with ID{id}'