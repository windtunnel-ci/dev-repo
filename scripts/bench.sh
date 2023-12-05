#!/usr/bin/env bash

set -euo pipefail

cargo bench

windtunnel-cli report -f criterion-rust .
