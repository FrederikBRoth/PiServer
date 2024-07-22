FROM debian
RUN apt-get -y update; apt-get -y install curl; apt-get -y install build-essential;
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup default nightly
RUN rustup target add wasm32-unknown-unknown
RUN cargo install wasm-bindgen-cli
RUN cargo install wasm-opt
RUN apt -y install pkg-config; apt -y install libssl-dev;
RUN apt-get -y install wget
RUN apt-get -y install tar
RUN apt-get -y install zip
RUN wgethttps://github.com/mozilla/sccache/releases/download/v0.8.1/sccache-v0.8.1-aarch64-unknown-linux-musl.tar.gz \
    && tar xzf sccache-v0.8.1-aarch64-unknown-linux-musl.tar.gz \
    && mv sccache-v0.8.1-aarch64-unknown-linux-musl/sccache /usr/local/bin/sccache \
    && chmod +x /usr/local/bin/sccache
RUN mkdir root/.config
RUN mkdir root/.config/sccache/
COPY ./config root/.config/sccache/config

