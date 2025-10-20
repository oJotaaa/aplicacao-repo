from fastapi import FastAPI

# Cria app
app = FastAPI()

@app.get("/")
async def root():
 return {"message": "Hello World"}
