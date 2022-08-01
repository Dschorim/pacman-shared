FROM archlinux:latest
RUN pacman -Syu
RUN pacman -S miniserve
RUN ln -s /var/lib/pacman/sync/*.db /var/cache/pacman/pkg/
CMD miniserve /var/cache/pacman/pkg
