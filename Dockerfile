FROM ubuntu

VOLUME ["/var/cache/apt-cacher-ng"]
EXPOSE 3142

RUN apt-get update && \
    apt-get install -y apt-cacher-ng curl && \
    rm -rf /var/cache/apt && \
    rm -rf /var/lib/apt

COPY entrypoint /bin
CMD entrypoint
