# 🐾 CatNip - NTLM Password Cracking Suite

[![GitHub release](https://img.shields.io/github/v/release/GreyRhinoSecurity/CatNip-NG)](https://github.com/GreyRhinoSecurity/CatNip-NG/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Shell](https://img.shields.io/badge/Bash-✔️-blue)](https://bash.sh)
[![Built With](https://img.shields.io/badge/Built%20With-Hashcat%20+%20John-orange)](https://hashcat.net)

**CatNip** is a modular, GPU-aware NTLM cracking suite built in Bash that integrates:
- 🧠 Smart wordlist generation
- 🔓 Hashcat & John cracking engines
- 📊 HTML dashboards + CSV export
- 🧪 Demo/test hash support
- 🐧 Easy `.deb` packaging + system menu integration

---

## 🚀 Features

- 🔧 Crack NTLM hashes using **Hashcat**, **John**, or both
- 💥 Supports GPU (OpenCL/NVIDIA/AMD) and CPU
- 🧠 Wordlist generator (usernames, years, CEWL from target URLs)
- 🧪 Quick Test mode: built-in known hashes for demo verification
- 📊 Interactive **HTML dashboard** with crack status & engine stats
- 📦 `.deb` installer + system-wide launcher (`catnip.desktop`)
- 📂 Auto ZIP and timestamp session logs
- 🧙 Advanced: rule sets, GPU tuning flags, offline HTML cracking

---

## 📸 Screenshot

![CatNip Dashboard](assets/catnip_dashboard.png)

---

## 📦 Install (via `.deb`)

Download from the [Releases page](https://github.com/GreyRhinoSecurity/CatNip-NG/releases):

```bash
sudo dpkg -i catnip_4.7-1_all.deb
