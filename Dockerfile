FROM python:latest
WORKDIR /app
RUN git clone "https://github.com/TomKugelman/2020-DevOps-Case-Study-1"
WORKDIR /app/2020-DevOps-Case-Study-1
RUN pip install -r requirements.txt
CMD ["python", "web.py"]