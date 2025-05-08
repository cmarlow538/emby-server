#!/bin/bash

set -e

echo "🔧 Setting up Emby Docker environment..."

# Load .env variables
source .env

# Create necessary folders
mkdir -p "${CONFIG_PATH}" "${VIDEOS_PATH}" "${PICTURES_PATH}"

echo "✅ Folders ensured: $CONFIG_PATH, $VIDEOS_PATH, and $PICTURES_PATH"

# Set permissions
echo "🔑 Setting folder permissions..."
chown -R "${UID}:${GID}" "${CONFIG_PATH}" "${VIDEOS_PATH}" "${PICTURES_PATH}"

# Start the container
echo "🚀 Starting Emby server..."
docker compose up -d

echo "🎉 Emby should now be running at http://localhost:8096"
