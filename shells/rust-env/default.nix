{
  mkShell,
  rustPlatform,
  clippy,
  rust-analyzer,
  cargo-semver-checks,
  cargo-watch,
  cargo-flamegraph,
  just,
  rust-env-package
}:
mkShell {
  inputsFrom = [
    rust-env-package
  ];
  packages = [
    rust-analyzer
    clippy
    cargo-semver-checks
    cargo-watch
    cargo-flamegraph
    just
  ];
  RUST_SRC_PATH = "${rustPlatform.rustLibSrc}";
}