FROM busybox

COPY . /var/www
VOLUME /var/www

ENTRYPOINT busybox tail -f /dev/null

