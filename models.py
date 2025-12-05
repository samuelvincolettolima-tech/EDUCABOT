from pydantic import BaseModel

class Mensagem(BaseModel):
    aluno_id: int
    mensagem: str
