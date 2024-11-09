FROM node:22.11.0-bullseye-slim
 
RUN apt update && \
    apt install libcairo2-dev libpango1.0-dev curl unzip make build-essential -y
 
RUN curl -fsSL https://bun.sh/install | bash && cp /root/.bun/bin/bun /usr/bin
 
COPY . /app
 
ENV PKG_CONFIG_PATH=/usr/lib/pkgconfig
 
WORKDIR /app
 
RUN bun install && bun pm trust --all
 
CMD ["sleep", "infinity"]