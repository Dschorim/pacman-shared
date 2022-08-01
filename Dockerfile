FROM archlinux:latest
RUN pacman -Syu --noconfirm && \
    pacman -S pacoloco --noconfirm && \
    mkdir -p /var/cache/pacoloco/pkgs/mycopy/
COPY pacoloco.yaml /etc/pacoloco.yaml
CMD pacoloco