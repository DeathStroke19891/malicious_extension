from flask import Flask, render_template, make_response, send_from_directory

app = Flask(__name__)

@app.route("/", methods=["GET"])
def default():
    return make_response(render_template('index.html'))

@app.route('/<path:path>') #Everything else just goes by filename
def sendstuff(path):
	return send_from_directory('./',path)

if __name__ == "__main__":
    app.run(port=5001)
