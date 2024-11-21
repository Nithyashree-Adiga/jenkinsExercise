# Step 1: Use the official Python image as the base image
FROM python:3

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the Flask app into the container
COPY py-webserver.py /app

# Step 4: Install Flask (and any other required Python packages)
RUN pip install flask

# Step 5: Expose the port that Flask will run on
EXPOSE 5000

# Step 6: Define the command to run the application
CMD ["python", "py-webserver.py"]
