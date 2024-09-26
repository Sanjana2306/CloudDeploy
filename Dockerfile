# Use an official Python runtime as a parent image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9


# Copy the content of the 'cc_deploy/app' folder into the /app directory inside the container
COPY ./requirements.txt /app/requirements.txt


# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY ./app /app/app
