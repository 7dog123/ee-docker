FROM ghcr.io/7dog123/7dog123/ee-docker:latest

ENV PS2DEV=/usr/local/ps2dev
ENV PS2SDK=$PS2DEV/ps2sdk
ENV GSKIT=$PS2DEV/gsKit
ENV PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin

RUN cd ps2toolchain-ee && \
./scripts/003-newlib.sh && \
./scripts/004-newlib-nano.sh && \
./scripts/005-gcc-stage2.sh

