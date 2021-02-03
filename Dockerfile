FROM python:latest
WORKDIR /app
RUN git clone "https://github.com/TomKugelman/2020-DevOps-Case-Study-1"
RUN pip install requirements.txt
CMD ["python3", "web.py"]