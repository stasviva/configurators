#!/bin/sh
brew update
brew install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
mkdir .cargo
