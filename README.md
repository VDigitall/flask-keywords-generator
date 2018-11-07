# flask-keywords-generator

Web service for generate keyword from product title

Application accept `*.xlsx` file where in first column are product titles and return `*.xlsx` file where in second
column are keywords comma separated.

Application available on route ``http://localhost:8000/keywords_generator/``

## How to run without docker

Type follow commands:

```bash
git clone https://bitbucket.org/Vitall_Digitall/flask-keywords-generator.git
cd flask-keywords-generator
virtualenv .env -p python3
source .env/bin/activate
pip install -r requirements.txt
gunicorn --bind=0.0.0.0:8000 run:app -d
```

``-d`` allow run app as deamon

## How to run with docker

Type follow command, but before repeat 1-2 steps from previous instruction.

```bash
docker build -t flask-keywords-generator:latest .
docker run -d -p 8000:8000 flask-keywords-generator:latest
```