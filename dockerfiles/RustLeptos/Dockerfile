FROM debian
RUN apt-get -y update; apt-get -y install curl; apt-get -y install build-essential;
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup default nightly
RUN rustup target add wasm32-unknown-unknown
RUN cargo install wasm-bindgen-cli
RUN cargo install wasm-opt
RUN apt-get -y install wget
RUN apt-get -y install tar
RUN apt-get -y install zip

