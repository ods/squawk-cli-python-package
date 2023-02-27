# Keep in sync with verion in rust-toolchain file
FROM rust:1.67.0-bullseye

RUN apt-get update -y
RUN apt-get install -y python pip libclang-dev
RUN pip install maturin
