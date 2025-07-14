#!/bin/bash
set -e

echo "🐾 Installing CatNip from GitHub..."

# Download latest .deb from your repo release
curl -L -o catnip_4.7-1_all.deb https://github.com/GreyRhinoSecurity/CatNip-NG/releases/latest/download/catnip_4.7-1_all.deb

# Install it
sudo dpkg -i catnip_4.7-1_all.deb

# Confirm install
echo "✅ CatNip installed! Launch it with:"
echo "    catnip"
