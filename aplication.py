from flask import Flask
import requests
from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer

app = Flask(__name__)

# Inicializa o ChatBot
chatbot = ChatBot('Charlie')

# Cria um treinador e treina o chatbot com os dados de treinamento do corpus
trainer = ChatterBotCorpusTrainer(chatbot)
trainer.train('chatterbot.corpus.portuguese')
trainer.train("chatterbot.corpus.portugues.conversations")

@app.route('/chatbot', methods=['POST'])
def chatbot():
    data = request.get_json()  # Obtém os dados da requisição POST
    message = data['message']  # Obtém a mensagem enviada pelo cliente

    # Obtém a resposta do chatbot
    response = chatbot.get_response(message).text

    # Retorna a resposta em formato JSON
    return jsonify({'response': response})

if __name__ == '__main__':
    app.run()
