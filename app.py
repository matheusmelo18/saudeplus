from flask import Flask, request
import requests
import json
from flask_cors import CORS, cross_origin

app = Flask(__name__)

cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'



@app.route('/')
@cross_origin()
def index():

    headers = {
    "Authorization": "Bearer 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",
    "Content-Type": "application/json"
    }

    mensagem1 = "Tenho os seguintes sintomas: "
    user = request.args["input"] 
    mensagem3 = ", qual seria o melhor tipo de especialisa que eu deveira procurar para resolver os meus problemas?"

    data = {
        "model": "gpt-3.5-turbo",  # O modelo que você deseja usar
        "messages": [
            {"role": "user", "content": mensagem1 + user + mensagem3}
        ]
    }

    url = "https://api.openai.com/v1/chat/completions"

    response = requests.post(url, headers=headers, data=json.dumps(data))

    resposta = json.loads(response.text)

    mensagem = resposta['choices'][0]['message']['content']

    return {"text": mensagem}

app.run(host='0.0.0.0', port=81)