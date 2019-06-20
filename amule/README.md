# amule

docker hub: [tchabaud/amule](https://hub.docker.com/r/tchabaud/amule)

## Usage

Create needed directories with

    mkdir -p ./amule/conf
    mkdir -p ./amule/tmp
    mkdir -p ./amule/incoming

To use a fancy web ui from a browser, add following environment

    -e WEBUI_TEMPLATE=AmuleWebUI-Reloaded

Start container

    sh run.sh
