FROM caddy:2-builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/namecheap --with pkg.jsn.cam/caddy-defender

FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
