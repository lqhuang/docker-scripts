# ss-local

Run `ss-local` with `config.json` file.

## Usage

Create a configuration file named as `config.json` in current directory

    {
        "server": "ip-address-of-your-server",
        "server_port": 8388,
        "password": "hello,world",
        "local_port": 1080,
        "method": "chacha20-ietf-poly1305",
        "mode": "tcp_and_udp",
        "timeout": 300,
        "fast_open": true
    }

Run

    docker-compose up -d
    # or
    sh run.sh
