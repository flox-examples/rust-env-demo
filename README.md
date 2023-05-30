# Rust environment demo

This repository contains a demo Rust environment for working on a crate that compiles against `libcurl`.
The repo both builds the crate and provides a development shell.

## Build environment
The build environment handles the following details for you:
- Provides `rustc` and `cargo` from the latest Rust release
- Provides a `libcurl` to link against so that the crate doesn't need to compile it from source
- Handles macOS-specific build dependencies

## Development shell
The development shell is set up to provide a full Rust development environment including third-party tools. It provides the following features:
- `rust-analyzer`, `clippy`, and `rustfmt` so that you can integrate them with your IDE for code intelligence and automatic formatting
- `RUST_SRC_PATH` environment variable set so that `rust-analyzer` works properly
- `just` and a `Justfile` for running project-specific commands
- `cargo-watch` so that you can run commands automatically on every change to your source code
- `cargo-semver-checks` so that you can automatically detect semver-breaking changes
- `cargo-flamegraph` so that you can profile the execution of your crate

All of these features are automatically set up for every developer who has `flox` installed on their machine.
A new developer simply needs to clone the repo and `flox develop` to be dropped into a complete development environment.
Spending a week getting your development environment set up is a thing of the past.