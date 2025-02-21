from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def index():
    response = requests.get('https://www.quoterism.com/api/quotes/random')
    quote_data = response.json()
    quote_text = quote_data['text']
    author_name = quote_data['author']['name']
    quote_id = quote_data['id']
    return render_template('index.html', text=quote_text, author=author_name, id=quote_id)

if __name__ == '__main__':
    app.run(debug=True)
