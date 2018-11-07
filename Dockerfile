FROM fedora:28
RUN dnf update -y && dnf install gcc libstdc++ python3-devel -y && dnf clean all && pip3 install --upgrade pip && python3 --version
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD ["gunicorn", "--bind=0.0.0.0:8000", "--workers=2", "run:app"]
