FROM ghcr.io/7dog123/ps2dev-docker/run-on-arch-7dog123-ps2dev-docker-ci-armv7-bullseye:latest

ENV PS2DEV=/usr/local/ps2dev
ENV PS2SDK=$PS2DEV/ps2sdk
ENV GSKIT=$PS2DEV/gsKit
ENV PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin

RUN git clone https://github.com/ps2dev/ps2toolchain-ee && \
cd ps2toolchain-ee && \
./scripts/003-newlib.sh && \
./scripts/004-newlib-nano.sh && \
./scripts/005-gcc-stage2.sh

