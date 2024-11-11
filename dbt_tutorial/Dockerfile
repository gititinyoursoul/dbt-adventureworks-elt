FROM python:3.12-slim-bullseye

RUN apt-get -y update && apt-get -y upgrade

# Set the working directory inside the container
ENV DBT_DIR=/dbt
WORKDIR $DBT_DIR

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

# Install dbt packages from `packages.yml`
RUN dbt deps  