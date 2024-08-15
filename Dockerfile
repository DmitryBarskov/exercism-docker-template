ARG TARGET_IMAGE=alpine

FROM --platform=$BUILDPLATFORM alpine AS build

ARG BUILDPLATFORM
ARG TARGETARCH
ARG TARGETOS

ARG EXERCISM_VERSION="3.3.0"

WORKDIR /root
RUN wget -O exercism.tar.gz \
  "https://github.com/exercism/cli/releases/download/v$EXERCISM_VERSION/exercism-$EXERCISM_VERSION-$TARGETOS-$TARGETARCH.tar.gz"
RUN tar -xf exercism.tar.gz

FROM $TARGET_IMAGE
ARG TARGET_IMAGE
ARG UID
ARG GID

COPY --from=build /root/exercism /bin/exercism

# Use instructions below for alpine based images
RUN addgroup -g $GID exercist && \
  adduser -S -u $UID -G exercist exercist

# Use instruction below for debian based images
# RUN groupadd -g $GID exercist && \
#  useradd -m -r -o -u $UID -g exercist exercist

USER exercist
WORKDIR /home/exercist

RUN mkdir -p /home/exercist/.config/exercism
RUN touch /home/exercist/.config/exercism/user.json
