FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S pacoloco --noconfirm
RUN mkdir -p /var/cache/pacoloco/pkgs/mycopy/
COPY pacoloco.yaml /etc/pacoloco.yaml
CMD pacoloco -h && pacoloco