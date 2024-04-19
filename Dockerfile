FROM quay.io/jupyter/base-notebook:e838ff397a2d
USER root

# Update package lists and install necessary dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    gcc \
    graphviz \
    graphviz-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Clone the repository and install requirements
RUN git clone https://github.com/uds-se/fuzzingbook.git && \
    cd fuzzingbook && \
    pip install -r requirements.txt