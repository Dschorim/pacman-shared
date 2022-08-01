FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S pacoloco --noconfirm
COPY pacoloco.yaml /etc/pacoloco.yaml
CMD pacoloco -h && pacoloco