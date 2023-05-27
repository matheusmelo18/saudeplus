import requests 
import json

headers = {
    "Authorization": "Bearer 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",
    "Content-Type": "application/json"
}

mensagem1 = "Tenho os seguintes sintomas: "
mensagem2 = 
mensagem3 = ", qual seria o melhor tipo de especialisa que eu deveira procurar para resolver os meus problemas?"



data = {
    "model": "gpt-3.5-turbo",  # O modelo que você deseja usar
    "messages": [
        {"role": "user", "content": mensagem1 + mensagem2 + mensagem3}
    ]
}

url = "https://api.openai.com/v1/chat/completions"

response = requests.post(url, headers=headers, data=json.dumps(data))

resposta = json.loads(response.text)

mensagem = resposta['choices'][0]['message']['content']

print(mensagem)
