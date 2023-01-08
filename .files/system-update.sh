#!/bin/env zsh
echo "Initializing user env..."
source "$HOME/.zshrc"
echo "\n"
echo "## shell: $SHELL ##"
echo "\n"
echo "------------------------"
echo "-  Updating system...  -"
echo "------------------------"
echo "System info: $(uname -a)"
echo ""
echo "Updating system via 'apt'..."
sudo dnf update && sudo dnf upgrade
echo ""
echo "Updating rust toolchain..."
rustup update
echo ""
echo "Updating conda..."
conda update conda

echo "Updating SDKMAN..."
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk update
sdk upgrade

echo "Updating NVM..."
nvm install node --reinstall-packages-from=current --latest-npm


