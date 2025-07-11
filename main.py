from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Flask inside Docker!"

@app.route('/greet', methods=['POST'])
def greet():
    name = request.json.get("name")
    return {"message": f"Hello, {name}!"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)