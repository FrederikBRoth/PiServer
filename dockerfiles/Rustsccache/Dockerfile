FROM rust:latest
RUN cargo install sccache --locked
EXPOSE 4226
RUN sccache --start-server
