from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    print("He")
    print("Habibi")
    return 'Hello, world!'

if __name__ == '__main__':
    app.run()

