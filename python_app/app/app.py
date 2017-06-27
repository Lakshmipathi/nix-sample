from flask import Flask
import emoji

app = Flask(__name__)
@app.route('/')
def hello():
    return emoji.emojize('Hello Nix World :thumbs_up:')

if __name__ == '__main__':
    app.run(host='0.0.0.0')
