from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
import mysql.connector
from mysql.connector import Error
import pandas as pd


# Create a new chat bot named Charlie
chatbot = ChatBot('Charlie')


trainer = ListTrainer(chatbot)


trainer.train([
    "Olá, como posso ajudá-lo?",
    "Sure, I'd like to book a flight to Iceland.",
    "Your flight has been booked."
])


# Get a response to the input text 'I would like to book a flight.'
response = chatbot.get_response('I would like to book a flight.')


print(response)


                                          
