# Makefile

# Define phony targets
.PHONY: all all-release all-quick build test build-release install test-release build-time build-quick check test-quick clippy coverage-docker update-deps unused-deps versions doc man man-preview

# Set DOGE_DEBUG to empty string
export DOGE_DEBUG := ""

# Targets related to building
build:
	@cargo build

build-release:
	@cargo build --release --verbose
	# @strip "${CARGO_TARGET_DIR:-target}/release/doge"

build-time:
	@cargo +nightly clean
	@cargo +nightly build -Z timings

build-quick:
	@cargo build --no-default-features	

# Check the compilation
check:
	@cargo check

# Installation of the bin
install:
	@cp -v target/release/doge /usr/bin/doge
	@chmod +x /usr/bin/doge

# Targets related to testing
test:
	@cargo test --workspace -- --quiet

test-release:
	@cargo test --workspace --release --verbose

test-quick:
	@cargo test --workspace --no-default-features -- --quiet

# Targets related to fuzzing

# Targets related to code quality and miscellaneous
clippy:
	@touch dns/src/lib.rs
	@cargo clippy

coverage-docker:
	@docker run --security-opt seccomp=unconfined -v "${PWD}:/volume" xd009642/tarpaulin cargo tarpaulin --all --out Html

update-deps:
	@cargo update
	@command -v cargo-outdated >/dev/null || (echo "cargo-outdated not installed" && exit 1)
	@cargo outdated

unused-deps:
	@command -v cargo-udeps >/dev/null || (echo "cargo-udeps not installed" && exit 1)
	@cargo +nightly udeps

versions:
	@rustc --version
	@cargo --version

# Targets related to documentation
doc:
	@cargo doc --no-deps --workspace

man:
	@mkdir -p "${CARGO_TARGET_DIR:-target}/man"
	@pandoc --standalone -f markdown -t man man/doge.1.md > "${CARGO_TARGET_DIR:-target}/man/doge.1"

man-preview: man
	@man "${CARGO_TARGET_DIR:-target}/man/doge.1"
