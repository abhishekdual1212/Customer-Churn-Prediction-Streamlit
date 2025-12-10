# 1. Use official Python image
FROM python:3.10-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy project files
COPY . .

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose Streamlit default port
EXPOSE 8501

# 6. Run Streamlit app
EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0", "--server.port=8501"]

