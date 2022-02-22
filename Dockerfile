FROM caddy:2.4.6-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/silinternational/certmagic-storage-dynamodb \
    --with github.com/lindenlab/caddy-s3-proxy 

FROM caddy:2.4.6-alpine

COPY Caddyfile /srv/Caddyfile
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
