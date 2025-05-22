FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV CONDA_DIR=/opt/conda
ENV PATH=$CONDA_DIR/bin:$PATH

# Install essential Ubuntu packages
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    vim \
    nano \
    which \
    bzip2 \
    ca-certificates \
    libglib2.0-0 \
    libxext6 \
    libsm6 \
    libxrender1 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $CONDA_DIR && \
    rm /tmp/miniconda.sh

# Create and activate a new conda environment with required tools
RUN $CONDA_DIR/bin/conda create -y -n bioenv -c bioconda -c conda-forge \
    sra-tools fastqc multiqc bowtie2 && \
    echo ". $CONDA_DIR/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate bioenv" >> ~/.bashrc

# Default shell in login mode so .bashrc is sourced
CMD ["bash", "--login"]

