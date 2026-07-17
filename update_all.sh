#!/bin/bash
# High-speed parallel/sequential update script for all 6 AC units

CONFIGS=(
  "ac-living-room.yaml"
  "ac-bedroom.yaml"
  "ac-office.yaml"
  "ac-kitchen.yaml"
  "ac-guest-room.yaml"
  "ac-dining-room.yaml"
)

echo "🚀 Starting bulk update for all 6 Innovair AC adapters..."

for config in "${CONFIGS[@]}"; do
  echo "------------------------------------------------"
  echo "Updating $config..."
  echo "------------------------------------------------"
  # Runs the compile and OTA upload without leaving the interactive log stream open
  esphome run "$config" --no-logs
done

echo "🎉 All units successfully updated!"
