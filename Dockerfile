# Використовуємо офіційний базовий образ Python
FROM python:3.10-slim

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо файл залежностей у поточну директорію
COPY app/requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь вміст поточної директорії на хості в робочу директорію контейнера
COPY ./app .

# Вказуємо команду, яка буде виконуватися при запуску контейнера
CMD ["python", "main.py"]
