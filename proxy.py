from flask import Flask, jsonify
import requests
app = Flask(__name__)

@app.route('/')
def fn_return_data():
	resp = requests.get("https://api.theopenvent.com/exampledata/v2/data", verify=False)
	json_resp = resp.json()
	return jsonify(json_resp)

if __name__ == '__main__':
	app.run( port=8081, debug=True)