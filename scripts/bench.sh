#!/usr/bin/env nix-shell
#!nix-shell -i bash -p cargo hyperfine
#!nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/e92039b55bcd58469325ded85d4f58dd5a4eaf58.tar.gz

set -euo pipefail

cargo bench
windtunnel-cli report -f criterion-rust .

cargo build --release
hyperfine -N --export-json ./results.json \
    -n fib20 'target/release/windtunnel-dev-repo 20'
windtunnel-cli report -f hyperfine-json results.json
