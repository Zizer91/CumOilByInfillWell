# Используем официальный образ Python
FROM python:3.9

# Устанавливаем необходимые пакеты
RUN pip install jupyter mysql-connector-python pandas optuna matplotlib plotly scikit-learn numpy

# Копируем ваш код в контейнер
COPY app /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Открываем порт для Jupyter
EXPOSE 8888

# Запускаем Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]