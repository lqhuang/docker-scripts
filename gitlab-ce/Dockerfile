ARG VERSION=2

FROM caddy:${VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/namecheap

FROM caddy:${VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
