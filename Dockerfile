FROM ubuntu:latest

# Instalăm pachetele de bază
RUN apt-get update && apt-get install -y \
    tshark \
    clamav \
    clamav-daemon \
    yara \
    wget \
    curl \
    net-tools \
    iputils-ping \
    nano \
    && apt-get clean

# Copiem scripturile în container
COPY scripts/ /opt/scripts/
RUN chmod +x /opt/scripts/*.sh

# Setăm entrypoint-ul
ENTRYPOINT ["/opt/scripts/entrypoint.sh"]

