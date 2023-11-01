
curl -sS https://starship.rs/install.sh | sh
rustup component add rust-src

# https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary
# This does not update the rust-analyzer.
# see https://rust-analyzer.github.io/manual.html#coc-rust-analyzer
mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

