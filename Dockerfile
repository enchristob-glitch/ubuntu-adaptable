FROM debian:bookworm-slim
RUN apt update && apt install -y curl sudo ttyd
RUN useradd -m -s /bin/bash ubuntu && echo "ubuntu:ubuntu" | chpasswd && usermod -aG sudo ubuntu
EXPOSE 8080
CMD ttyd -p 8080 -c ubuntu:ubuntu -W bash
