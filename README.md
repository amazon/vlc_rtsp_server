[![Docker](https://github.com/amazon/vlc_rtsp_server/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/amazon/vlc_rtsp_server/actions/workflows/docker-publish.yml)

# simple RTSP server based on cvlc

infinitely streams files from /video volume over RTSP protocol

inspired by https://stackoverflow.com/questions/25648337/using-vlc-to-host-a-stream-of-an-infinite-video-loop

### example usage:
```
docker build -t rtsp_server .
docker run --rm -p 8554:8554 -v $PWD/video:/video rtsp_server
```
