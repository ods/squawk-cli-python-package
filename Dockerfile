# syntax = docker/dockerfile:1.3

# Keep in sync with verion in rust-toolchain file
FROM rust:1.67.0-bullseye

RUN --mount=type=cache,sharing=locked,target=/var/lib/apt \
    --mount=type=cache,sharing=locked,target=/var/cache/apt \
    apt-get update -y \
    && apt-get install -y python pip libclang-dev

RUN --mount=type=cache,target=${HOME}/.cache \
    pip install maturin
