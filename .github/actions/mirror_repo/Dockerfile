FROM public.ecr.aws/docker/library/alpine:3.16.2

COPY scripts/* /

RUN apk add --no-cache \
    git \
    openssh-client

ENTRYPOINT ["/entrypoint.sh"]
CMD []
