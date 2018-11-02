

FROM cityofaustin/dockerless-api

ENV DEPLOYMENT_MODE "PRODUCTION"

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD [ "gunicorn", "app:app", "-b 0.0.0.0:5000", "--worker-class", "sanic.worker.GunicornWorker",  "--pythonpath", "/app/" ]
