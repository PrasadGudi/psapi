# Use an official Python image as the base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install pipenv inside the container
RUN pip install pipenv

# Install application dependencies from Pipfile.lock
RUN pipenv install --ignore-pipfile

# Expose the port that your Flask app is running on
EXPOSE 5000

# Set the command to start your Flask app
CMD ["pipenv", "run", "python", "main.py"]
