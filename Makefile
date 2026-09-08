# The Mathlingua Reference is a Mathlingua collection, built and served with the
# `mlg` command from the sibling `mathlingua` tooling repository.
#
# Point MATHLINGUA_DIR at your checkout of that repo (default: ../mathlingua),
# or set MLG directly to an `mlg` binary already on your PATH.
MATHLINGUA_DIR ?= ../mathlingua
MLG ?= $(MATHLINGUA_DIR)/target/debug/mlg

.PHONY: mlg check build serve clean

# Build the `mlg` binary from the tooling repository.
mlg:
	cargo build --manifest-path $(MATHLINGUA_DIR)/Cargo.toml --bin mlg

# Check syntax and semantics of every page (formatting follows formatOnCheck).
check: mlg
	$(MLG) check

# Export the static site into ./docs.
build: mlg
	$(MLG) export --force

# Serve the reference locally for live viewing (http://localhost:3000).
serve: mlg
	$(MLG) view

# Remove the exported site.
clean:
	rm -rf docs
