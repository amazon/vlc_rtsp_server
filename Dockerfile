FROM ubuntu:22.10

WORKDIR /video

RUN apt update && apt install -y vlc && useradd rtsp && rm -rf /var/lib/apt/lists/* && chown rtsp:rtsp /video

USER rtsp

VOLUME ["/video"]

ENTRYPOINT ["/usr/bin/cvlc", "-vvv", "--sout-keep", "--sout", "#gather:rtp{dst=0.0.0.0,port=8554,sdp=rtsp://0.0.0.0:8554/test.sdp}", "--loop", "--sout-rtsp-user=admin", "--sout-rtsp-pwd=admin"]
CMD ["/video"]
