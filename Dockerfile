FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S nginx --noconfirm
RUN mkdir /srv/http/pacman-cache
RUN chown http:http /srv/http/pacman-cache
CMD nginx -t && nginx -g 'daemon off;'