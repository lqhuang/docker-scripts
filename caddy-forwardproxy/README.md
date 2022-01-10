# Caddy Forward Proxy

Use `caddy` 2 as a forward proxy server.

## `Caddyfile` example

Replace "example.com" with your domain name.

```Caddyfile
{
  admin off
  servers :443 {
    protocol {
      experimental_http3
    }
  }
}

:80 {
  redir https://{host}{uri} permanent
}
:443 example.com
tls your.email@example.com

route {
  forward_proxy {
    basic_auth username password
    hide_ip
    hide_via
    probe_resistance some-url.com
  }
  file_server { root /var/www/html }
}
```

## Custom plugins

Add your custom caddy v2 plugins in `Dockerfile`, for example:

```
--with github.com/caddy-dns/cloudflare
```

## References

1. [Github - klzgrad/forwardproxy](https://github.com/klzgrad/forwardproxy)
2. [Github - mholt/caddy-l4](https://github.com/mholt/caddy-l4)
3. [Github - mastercactapus/caddy2-proxyprotocol](https://github.com/mastercactapus/caddy2-proxyprotocol)
2. [Github - module for Caddy](https://github.com/caddy-dns/cloudflare)
