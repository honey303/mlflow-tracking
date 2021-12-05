FROM python:3.9

RUN pip install mlflow==1.13 && \
    pip install awscli --upgrade --user && \
    pip install boto3==1.16.46

ENV FILE_DIR /opt/mlflow
ENV AWS_BUCKET s3://mlflow-tracking-assignment/mlflow
ENV PORT 5000

EXPOSE 5000/tcp

COPY scripts/run.sh /

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
