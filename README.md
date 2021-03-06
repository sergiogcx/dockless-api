# dockless-api
A dockless mobility data API built with Python/Sanic

## Installation
** Requires Python 3.6+ **

1. Clone repo and `cd` into it.
2. Install python requirements:
```python
pip install -r requirements.txt
```
3. Start the server:
```python
python app/app.py
```

4. Make a request:
```shell
curl http://localhost:8000/v1/trips?xy=-97.75094341278084,30.276185988411257&flow=destination
```


## Running Docker

```
docker build -f Dockerfile.base -t cityofaustin/dockless-api .
docker tag cityofaustin/dockless-api:latest cityofaustin/dockless-api:latest
docker push cityofaustin/dockless-api
```
