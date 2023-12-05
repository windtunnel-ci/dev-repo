#!/usr/bin/env bash

cargo bench

windtunnel-cli report -f criterion-rust .
