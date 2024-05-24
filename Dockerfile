FROM tiangolo/uvicorn-gunicorn-fastapi:latest
WORKDIR /Evalutation
COPY . /root/Evaluation/app
EXPOSE 5000
RUN pip install --no-cache-dir firebase-admin pydantic
RUN pip install --upgrade pip
CMD ["python", "/root/Evaluation/app/mini_groq.py", "uvicorn"]
