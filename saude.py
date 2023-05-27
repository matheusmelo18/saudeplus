import requests
import json

headers = {
    "Authorization": "Bearer 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",
    "Content-Type": "application/json"
}

data = {
    "model": "gpt-3.5-turbo",  # O modelo que você deseja usar
    "messages": [
        {"role": "system", "content": "Você é um assistente de bate-papo"},
        {"role": "user", "content": "Qual é a sua cor favorita?"},
        {"role": "user", "content": "Tenho os seguintes sintomas: Presença de cravos e espinhas no rosto, costas e peito, inflamação da pele, oleosidade excessiva.Qual médico é o mais recomendado para tratamento?"}
    ]
}

url = "https://api.openai.com/v1/chat/completions"

response = requests.post(url, headers=headers, data=json.dumps(data))
print(response.json())

