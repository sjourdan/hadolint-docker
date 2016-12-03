# Hadolint (Docker Container)

[![Circle CI](https://circleci.com/gh/sjourdan/hadolint-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/hadolint-docker)

This container is smaller than [the original one(https://github.com/lukasmartinelli/hadolint) from Lukas Martinelli (96MB vs 1.7GB).

It's based on debian:jessie-slim and does the minimum.

## Supported tags

-	[`1.2.1`, `latest` (*Dockerfile*)](https://github.com/sjourdan/hadolint-docker/blob/1.2.1/Dockerfile)

## Usage

Usage is basically the following:

```
$ docker run --rm -i sjourdan/hadolint < Dockerfile
```

## Known Bugs

- N/A

## Build

```
$ make lint
$ make build
```

### Release Tags

The Docker Hub build is building versions across tags, so tag releases properly:

```
$ git tag <hadolint version>
$ git push --tags
```
