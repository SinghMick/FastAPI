from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/index")
async def index():
    return {"message": "Hello World on index"}
            