from fastapi import FastAPI, Header
from typing import Annotated
from fastapi.responses import PlainTextResponse

app = FastAPI()


@app.get('/', response_class=PlainTextResponse)
def get_root(user_agent: Annotated[str | None, Header()] = None, ):
    # how to get request header in FastAPI:
    #       https://fastapi.tiangolo.com/tutorial/header-params/
    msg = "Welcome to 2022\nUser Agent: {}\n".format(user_agent)
    return msg
