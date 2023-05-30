_default:
    @just --list

# Run tests on every change
watch-tests:
    @cargo watch -x test

# Collect a flamegraph of the package's execution
profile:
    @cargo build --release
    @cargo flamegraph --root