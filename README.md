# SMLIGHT SLWF-01 Pro - Pro Edition (Innovair/Midea)

This repository contains an optimized, production-grade ESPHome configuration for the **SMLIGHT SLWF-01 Pro (ESP8266 v2.4 hardware)** paired with **Innovair / Midea protocol** mini-splits.

## Features
- **Centralized Package Control**: One base YAML configures all devices; per-device files handle only naming and Home Assistant entities.
- **Improved Reliability**: High UART optimization, fast connection WiFi parameters, and custom logging constraints.
- **Smart Follow Me**: Dynamic push rates that decrease unnecessary network chatter while retaining precision.
- **Total Diagnostic Visibility**: Exposes uptime, RSSI, system Heap usage, IP/MAC addresses, and restart buttons cleanly into Home Assistant's diagnostic panel.

## Getting Started
1. Copy `secrets.yaml.example` to `secrets.yaml` and populate it with your credentials.
2. Edit your device files (e.g., `ac-living-room.yaml`) with the correct names and Home Assistant temperature sensor entity.
3. Deploy to your nodes using the ESPHome dashboard or Command Line.

## 📊 Home Assistant Dashboard Setup

This Pro Edition firmware exposes unique button and switch entities directly to Home Assistant (Beeper, Display Toggle, Swing Step). 

To build a clean control card for your dashboard:
1. Copy the YAML code located in the `/dashboard/lovelace-card.yaml` file.
2. In Home Assistant, click **Edit Dashboard** -> **Add Card** -> **Manual**.
3. Paste the YAML code, swap the entity names (e.g., change `living_room` to `bedroom`), and save!

## ⚠️ Disclaimer

**This repository and its configurations are provided "as is" without warranty of any kind, express or implied.** 

By flashing this custom firmware ("Pro Edition") to your SMLIGHT SLWF-01 Pro hardware, you acknowledge and agree to the following:

* **No Association:** This project is a community-driven, independent optimization. It is not affiliated with, endorsed by, or associated with SMLIGHT, Innovair, Midea, or ESPHome.
* **Risk of Instability:** While these configurations are meticulously optimized for the ESP8266 (ESP-12F) and Midea protocol, flashing custom firmware carries risks. You assume all responsibility for potential communication dropouts, device lockups, or configuration errors.
* **Hardware & Warranty Risks:** Interfacing with HVAC electronics via custom microcontrollers can theoretically void manufacturer warranties or cause unexpected system behavior if hardware limitations are exceeded. Proceed entirely at your own risk.
* **Liability Limitation:** In no event shall the authors or contributors of this repository be held liable for any damages, hardware malfunctions, lost connection time, or personal discomfort resulting from the compilation, flashing, or usage of these files.

**Always keep a backup of your original manufacturer firmware binaries before performing a first-time USB-C flash.**