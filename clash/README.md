# Clash

Prepare `config.yaml` file and `/ui` folder. Run `docker-compose up -d`.

Check `localhost:9091/ui` for dashboard.


## Dashboard

```shell
git clone https://github.com/Dreamacro/clash-dashboard.git
cd clash-dashboard/
npm install && npm run build
(scp/cp) -r dist/ dest/ui
```

## References

1. [clash](https://github.com/Dreamacro/clash)
2. [clash-as-a-daemon](https://github.com/Dreamacro/clash/wiki/clash-as-a-daemon)
3. [clash configuration](https://github.com/Dreamacro/clash/wiki/configuration)
4. [clash docker](https://hub.docker.com/r/dreamacro/clash)
5. [clash-older doc](https://lancellc.gitbook.io/clash/)
6. [clash simple rules](https://github.com/Hackl0us/SS-Rule-Snippet/blob/master/LAZY_RULES/clash.yaml)
7. [clash premium rules](https://github.com/Loyalsoldier/clash-rules)
