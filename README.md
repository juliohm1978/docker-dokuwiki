# Docker DokuWiki

A simple docker image with [DokuWiki](https://www.dokuwiki.org/dokuwiki) installed and ready to be used.

## Usage

To run, the following command line should be enough.

```
docker run -d --name dokuwiki -p 80:80 juliohm/dokuwiki:2018-04-22a-greebo
```

For persistence, be sure to mount a volume into `/var/www/html/data` inside the container.

## Image

The built image is hosted on docker hub: https://hub.docker.com/r/juliohm/dokuwiki/

Further updates will probably follow the [official DokuWiki releases](https://download.dokuwiki.org/archive).