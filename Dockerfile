FROM python:3.14.3-slim-trixie

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    git \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /workspace

CMD ["bash"]
