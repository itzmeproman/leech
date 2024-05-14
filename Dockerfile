# Use the base image artemisfowl004/vid-compress
FROM artemisfowl004/vid-compress

# Set environment variables
ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive \
    MY_CUSTOM_VARIABLE=my_value

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the command to run your custom script or application
CMD ["bash","start.sh"]
