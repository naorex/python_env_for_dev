FROM python:3.14.2-slim-trixie

RUN apt-get update && apt-get install -y \
    curl build-essential git && \
    apt-get clean

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /workspace

CMD ["bash"]
