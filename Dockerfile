FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S miniserve --noconfirm
RUN ln -s /var/lib/pacman/sync/*.db /var/cache/pacman/pkg/
CMD miniserve /var/cache/pacman/pkg
