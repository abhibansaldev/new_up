FROM mcr.microsoft.com/playwright/python:v1.46.0-noble

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN playwright install chromium

COPY . .

CMD ["python", "bot.py"]
