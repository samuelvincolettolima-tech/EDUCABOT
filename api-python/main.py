from fastapi import FastAPI
from models import Mensagem
from ia import gerar_resposta
from database import get_connection

app = FastAPI()

@app.post("/chatbot")
def chatbot(msg: Mensagem):
    resposta = gerar_resposta(msg.mensagem)

    conn = get_connection()
    cursor = conn.cursor()

    cursor.execute(
        "INSERT INTO ChatLog (AlunoId, Pergunta, Resposta) VALUES (?, ?, ?)",
        (msg.aluno_id, msg.mensagem, resposta)
    )

    conn.commit()
    conn.close()

    return {"resposta": resposta}
