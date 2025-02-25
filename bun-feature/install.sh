#!/usr/bin/env bash

set -e

BUN_INSTALL=/usr/local/bun
mkdir -p "$BUN_INSTALL"
# Ensure non-root users can execute bun
chmod -R 755 "$BUN_INSTALL"

echo "Installing bun..."
curl -fsSL https://bun.sh/install | bash

# Create a system-wide profile script to add Bun to the PATH
echo 'export BUN_INSTALL="/usr/local/bun"' >/etc/profile.d/bun.sh
echo 'export PATH="$BUN_INSTALL/bin:$PATH"' >>/etc/profile.d/bun.sh
chmod +x /etc/profile.d/bun.sh

# Add to current PATH
export PATH="$BUN_INSTALL/bin:$PATH"

#chmod +x "$BUN_INSTALL/bin/bun"

if command -v bun >/dev/null 2>&1; then
  echo "bun installed successfully! $(bun --version)"
else
  echo "bun failed to install"
  echo "PATH is currently: $PATH"
  exit 1
fi

echo "Done installing bun"
