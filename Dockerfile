FROM ubuntu:18.04

WORKDIR /mydir

RUN apt-get update && apt-get install -y curl python
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+x /usr/local/bin/youtube-dl
COPY script.txt .
ENV LC_ALL=C.UTF-8
RUN chmod +x ./script.txt
# Replacing CMD with ENTRYPOINT
ENTRYPOINT ["./script.txt"]