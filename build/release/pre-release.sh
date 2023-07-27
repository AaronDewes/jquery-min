#!/bin/sh

set -euo pipefail

# Cleans all release and build artifacts
npm run build:clean
npm run release:clean
npm ci
npm run authors:check
npm test

# Clone dist and cdn repos to the tmp/release directory
mkdir -p tmp/release
git clone https://github.com/jquery/jquery-dist tmp/release/dist
git clone https://github.com/jquery/codeorigin.jquery.com tmp/release/cdn
