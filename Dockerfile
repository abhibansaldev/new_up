FROM mcr.microsoft.com/playwright/python:v1.42.0-jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN playwright install chromium

COPY . .

CMD ["python", "bot.py"]
```

**2. Create `requirements.txt`** in the same folder:
```
playwright
python-telegram-bot
asyncio
```
Add any other libraries your bot uses.

**3. Your folder structure should look like:**
```
my-bot/
├── bot.py
├── emm11_scraper.py
├── Dockerfile
├── requirements.txt
