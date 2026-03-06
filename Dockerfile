FROM n8nio/n8n:1.82.3

USER root

RUN apt-get update -qq && apt-get install -y -qq qpdf && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

ENTRYPOINT ["n8n", "start"]
