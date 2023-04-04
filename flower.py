from flask import Flask, render_template,url_for # url_for is for loading images and all static file in flask

app = Flask(__name__)

@app.route("/")
def home_page():
    return render_template("index.html")

if __name__ == '__main__':
    app.run()