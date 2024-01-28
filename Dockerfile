FROM continuumio/anaconda3:latest

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . /app

# Install required Python packages
RUN pip install geopandas
RUN pip install pandas 
RUN pip install geojson 
RUN pip install requests 
RUN pip install bs4 
RUN pip install html.parser 
RUN pip install tabulate    

# Specify the command to run on container startup
CMD ["python", "EMBARGO_PROGRAM.py"]
