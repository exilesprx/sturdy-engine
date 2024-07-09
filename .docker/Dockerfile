FROM golang:1.22.5-bullseye

RUN apt -y update \
  && apt -y install wget

RUN curl -q 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null \
  && echo "deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr bullseye" | tee /etc/apt/sources.list.d/prebuilt-mpr.list \
  && apt -y update \
  && apt install just

ARG VERSION=0.27.0
RUN wget https://github.com/tinygo-org/tinygo/releases/download/v${VERSION}/tinygo_${VERSION}_amd64.deb \
  && dpkg -i tinygo_${VERSION}_amd64.deb