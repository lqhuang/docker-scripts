ARG VERSION=2

FROM caddy:${VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddyserver/forwardproxy@caddy2=github.com/klzgrad/forwardproxy@naive

FROM caddy:${VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
