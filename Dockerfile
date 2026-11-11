FROM mcr.microsoft.com/deployment-environments/runners/core:latest@sha256:18d6acb604d4bca078f8b8b33ea857d73eea62518c5635f5db97b285a196d3ac

COPY scripts/ /scripts/
RUN chmod 0755 /scripts/deploy.sh /scripts/delete.sh
