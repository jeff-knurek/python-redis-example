FROM jazzdd/alpine-flask:python3

WORKDIR /data/App/helloflask
COPY app.py /data/App/helloflask/app.py
RUN pip install redis flask

EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]
