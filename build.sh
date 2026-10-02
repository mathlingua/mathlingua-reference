#!/usr/bin/env bash
set -euo pipefail

ref_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

cd "$ref_dir/../mathlingua"
cargo build --release --locked

cd "$ref_dir"
../mathlingua/target/release/mlg export --force
