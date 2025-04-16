from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Привіт, світ!'


@app.route('/en')
def other():
    return "Hello, World!"


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
