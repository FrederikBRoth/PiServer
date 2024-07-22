FROM rust:latest
RUN cargo install sccache --locked
RUN git clone https://github.com/FrederikBRoth/cv-adventure.git
WORKDIR ./cv-adventure
ENV SCCACHE_SERVER_URL=http://172.17.0.1:4226
ENV RUSTC_WRAPPER=sccache
ENV lmao=2
RUN cargo build

