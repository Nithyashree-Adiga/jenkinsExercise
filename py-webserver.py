# py-webserver.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return "Hello, Dew Drop Service!"

@app.route('/about', methods=['GET'])
def returnAll():
    about = {  
        "version": "0.1",
        "name": "dewdrop"
    }
    return jsonify({'about': about})

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)